# <code-reader>
# Example input:
# ...
# Disassembly of section .init:
#
# 0000000000001000 <_init>:
#     1000:	f3 0f 1e fa          	endbr64
#     1004:	48 83 ec 08          	sub    rsp,0x8
#     1008:	48 8b 05 d9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fd9]        # 3fe8 <__gmon_start__@Base>
#     100f:	48 85 c0             	test   rax,rax
#     1012:	74 02                	je     1016 <_init+0x16>
#     1014:	ff d0                	call   rax
#     1016:	48 83 c4 08          	add    rsp,0x8
#     101a:	c3                   	ret
#
# ...
# or
# ...
# ./fib.elf.aarch64:     file format elf64-littleaarch64
#
#
# Disassembly of section .text:
#
# 0000000000001798 <_start>:
#     1798:	d503249f 	bti	j
#     179c:	d280001d 	mov	x29, #0x0                   	// #0
#     17a0:	d280001e 	mov	x30, #0x0                   	// #0
#     17a4:	910003e0 	mov	x0, sp
#     17a8:	14000001 	b	17ac <_start_main>
# ...

function coder_section_start_rx(str) {_CB_coder_section_start_rx = str}
function _coder_get_section_start_rx() {return _CB_coder_section_start_rx}

function coder_name_from_section_start_rx(str) {
	_CB_coder_name_from_section_start_rx = str
}
function _coder_get_name_from_section_start_rx() {
	return _CB_coder_name_from_section_start_rx
}

function coder_function_start_rx(str) {_CB_coder_function_start_rx = str}
function _coder_get_function_start_rx() {return _CB_coder_function_start_rx}

function coder_name_from_function_start_rx(str) {
	_CB_coder_name_from_function_start_rx = str
}
function _coder_get_name_from_function_start_rx() {
	return _CB_coder_name_from_function_start_rx
}

function _CODER_ST_LOOK_FOR_SECTION() {return 1}
function _CODER_ST_LOOK_FOR_FUNCTION() {return 2}
function _CODER_ST_READ_CODE() {return 3}
function _coder_set_state(st) {_CB_coder_read_state = st}
function _coder_get_state() {return _CB_coder_read_state}

function coder_get_error() {return _CB_coder_err}
function _coder_set_error(str) {_CB_coder_err = ("code-reader: " str)}

function _CODER_SUBSEP() {return SUBSEP}
function _coder_subsep_cat(a, b) {
	if (a && !b) return a
	if (b && !a) return b
	return (a _CODER_SUBSEP() b)
}
function _coder_subsep_split(str, arr_out) {
	return split(str, arr_out, _CODER_SUBSEP())
}

function _CODER_ALL() {return "all"}
function _coder_section_init(line) {
	if (!match(line, _coder_get_name_from_section_start_rx())) {
		_coder_set_error(sprintf("no name in section title '%s'", line))
		return 0
	}

	_CB_coder_section_func_set[""]
	delete _CB_coder_section_func_set

	_CB_coder_section_name = substr(line, RSTART, RLENGTH)
	sub(":", "", _CB_coder_section_name)
	if (!(_CB_coder_section_name in _CB_coder_section_map)) {
		_CB_coder_section_map[_CB_coder_section_name]
		_CB_coder_section_map[_CODER_ALL()] = \
			_coder_subsep_cat( _CB_coder_section_map[_CODER_ALL()], \
				_CB_coder_section_name)
	}
	return 1
}

function _coder_function_init(line) {
	if (!match(line, _coder_get_name_from_function_start_rx())) {
		_coder_set_error(sprintf("no name in function title '%s'", line))
		return 0
	}

	_CB_coder_func_name = substr(line, RSTART, RLENGTH)
	gsub("<|>|:", "", _CB_coder_func_name)
	if (!(_CB_coder_func_name in _CB_coder_section_func_set)) {
		_CB_coder_section_func_set[_CB_coder_func_name]
		_CB_coder_section_map[_CB_coder_section_name] = \
			_coder_subsep_cat(_CB_coder_section_map[_CB_coder_section_name], \
				_CB_coder_func_name)
	}
	_CB_coder_section_func = \
		_coder_subsep_cat(_CB_coder_section_name, _CB_coder_func_name)
	return 1
}

function _coder_function_save_line(line) {
	_CB_coder_section_map[_CB_coder_section_func] = \
		_coder_subsep_cat(_CB_coder_section_map[_CB_coder_section_func], \
			line)
}

function coder_section_get_all(out_arr) {
	return _coder_subsep_split(_CB_coder_section_map[_CODER_ALL()], out_arr)
}
function coder_section_get_functions(section_name, out_arr) {
	return _coder_subsep_split(_CB_coder_section_map[section_name], out_arr)
}
function coder_section_get_function_code(section_name, func_name, out_arr) {
	return _coder_subsep_split(\
		_CB_coder_section_map[_coder_subsep_cat(section_name, func_name)], \
		out_arr)
}

function _CODER_CODE_FS() {return ";"}
function _CODER_EMPTY_CODE_LINE() {
	if (!_B_coder_empty_line)
		_B_coder_empty_line = ("[[:xdigit:]]+"_CODER_CODE_FS() "$")
	return _B_coder_empty_line
}
function _CODER_HEX_X64() {return ":([[:space:]][[:xdigit:]]{2})+"}
function _CODER_HEX_ARM32_BIT_INSTR() {return ":[[:space:]][[:xdigit:]]{8}"}
function _coder_line_arch_sanitize(line) {
	# transform to
	# <addr>;<instr>[;comment]

	# remove leading and trailing spaces
	gsub("^[[:space:]]+|[[:space:]]+$", "", line)

	if (match(line, _CODER_HEX_ARM32_BIT_INSTR())) {

		# remove colon and hex values for arm
		sub(_CODER_HEX_ARM32_BIT_INSTR(), _CODER_CODE_FS(), line)
		# remove # from constants
		gsub("#", "", line)
		# turn comments like "// <something>" to ";<something>"
		sub("// ", _CODER_CODE_FS(), line)
	} else if (match(line, _CODER_HEX_X64())) {

		# remove colon and code hex values for output x64
		sub(_CODER_HEX_X64(), _CODER_CODE_FS(), line)
		sub("notrack ", "", line)
		sub("movabs", "mov", line)

		# if nothing to adhoc
		if (!match(line, "#.*<std[^>+]+>")) {
			# remove comments
			sub("[[:space:]]*# .*$", "", line)
		}
	}

	# single spaces
	gsub("[[:space:]]+", " ", line)
	# remove spaces around ;
	gsub("[[:space:]]*;[[:space:]]*", _CODER_CODE_FS(), line)

	if (match(line, _CODER_EMPTY_CODE_LINE()))
		line = ""

	return line
}

function coder_read(line,    _st) {

	_st = _coder_get_state()

	if (!_st) {
		_coder_set_state(_CODER_ST_LOOK_FOR_SECTION())
		_st = _coder_get_state()
	}

	if (_CODER_ST_LOOK_FOR_SECTION() == _st) {

		if (match(line, _coder_get_section_start_rx())) {

			if (!_coder_section_init(line))
				return 0

			_coder_set_state(_CODER_ST_LOOK_FOR_FUNCTION())
		}

	} else if (_CODER_ST_LOOK_FOR_FUNCTION() == _st) {

		if (match(line, _coder_get_function_start_rx())) {

			if (!_coder_function_init(line))
				return 0

			_coder_set_state(_CODER_ST_READ_CODE())
		}

	} else if (_CODER_ST_READ_CODE() == _st) {
		if (match(line, _coder_get_function_start_rx())) {
			_coder_set_state(_CODER_ST_LOOK_FOR_FUNCTION())
			return coder_read(line)
		} else if (match(line, _coder_get_section_start_rx())) {
			_coder_set_state(_CODER_ST_LOOK_FOR_SECTION())
			return coder_read(line)
		} else {
			if (line = _coder_line_arch_sanitize(line))
				_coder_function_save_line(line)
		}
	}

	return 1
}
# </code-reader>
