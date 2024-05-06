#!/usr/bin/awk -f

# <main>
function SCRIPT_NAME() {return "objdump-reader.awk"}
function SCRIPT_VERSION() {return "1.0"}

function set_data_file(name) {_B_data_file = name}
function get_data_file() {return _B_data_file}
function set_code_file(name) {_B_code_file = name}
function get_code_file() {return _B_code_file}
function set_section_file(name) {_B_section_file = name}
function get_section_file() {return _B_section_file}
function file_error_quit(fname) {error_quit(sprintf("'%s' %s", fname, ERRNO))}
function fname_error_quit(var) {
	error_quit(sprintf("-v %s=<file> not given", var))
}

function set_section_select(rx) {_B_section_select = rx}
function get_section_select() {return _B_section_select}
function set_code_select(rx) {_B_code_select = rx}
function get_code_select() {return _B_code_select}
function set_func_ignore(rx) {_B_func_ignore = rx}
function get_func_ignore() {return _B_func_ignore}

function SECTION_SELECT_DEFAULT() {return "data|rodata|bss"}
function CODE_SELECT_DEFAULT() {return "text"}
function FUNC_IGNORE_DEFAULT() {return "^_|_tm_clones$|frame_dummy|atexit"}
function init_options() {
	if (ObjData)
		set_data_file(ObjData)
	else
		fname_error_quit("ObjData")

	if (ObjCode)
		set_code_file(ObjCode)
	else
		fname_error_quit("ObjCode")

	if (ObjSections)
		set_section_file(ObjSections)
	else
		fname_error_quit("ObjSections")

	if (!SectionSelect)
		SectionSelect = SECTION_SELECT_DEFAULT()

	if (!CodeSelect)
		CodeSelect = CODE_SELECT_DEFAULT()

	if (!FuncIgnore)
		FuncIgnore = FUNC_IGNORE_DEFAULT()

	set_section_select(SectionSelect)
	set_code_select(CodeSelect)
	set_func_ignore(FuncIgnore)
}
function init_hexr() {
	hexr_section_start_rx("Contents of section ")
	hexr_name_from_section_start_rx("[^[:space:]]+:")
}
function init_coder() {
	coder_section_start_rx("Disassembly of section ")
	coder_name_from_section_start_rx("[^[:space:]]+:")
	coder_function_start_rx("^[[:xdigit:]]+ <[^>]+>:$")
	coder_name_from_function_start_rx("<[^>]+>:$")
}

function init() {
	set_program_name(SCRIPT_NAME())
	init_options()
	init_hexr()
	init_coder()
}

function read_data(    _arr, _len, _i, _file) {
	_file = get_data_file()
	_len = read_file(_file, _arr)
	if (_len < 0)
		file_error_quit(_file)

	for (_i = 1; _i <= _len; ++_i) {
		if (!hexr_read(_arr[_i]))
			error_quit(hexr_get_error())
	}
}

function COMMENT() {return "^[[:space:]]*;"}
function read_code(    _arr, _len, _i, _file) {
	_file = get_code_file()
	_len = read_file(_file, _arr)
	if (_len < 0)
		file_error_quit(_file)

	for (_i = 1; _i <= _len; ++_i) {
		if (match(_arr[_i], COMMENT()))
			continue
		if (!coder_read(_arr[_i]))
			error_quit(coder_get_error())
	}
}

function START() {return "start"}
function SIZE() {return "size"}
function section_save_name(name) {_B_section_info_names[name]}
function section_get_names(arr_out,    _i, _n) {
	delete arr_out
	for (_n in _B_section_info_names)
		arr_out[++_i] = _n
	return _i
}
function section_save_start(name, start) {
	sub("^0+", "", start)
	_B_section_info[name, START()] = start
}
function section_save_size(name, size) {
	sub("^0+", "", size)
	_B_section_info[name, SIZE()] = size
}
function section_get_start(name) {return _B_section_info[name, START()]}
function section_get_size(name) {return _B_section_info[name, SIZE()]}

function read_sections(    _arr, _len, _i, _file, _arr_2, _name, _size, _start,
_line) {
# Input is like
# Sections:
# Idx Name          Size      VMA               LMA               File off  Algn
#   0 .interp       0000001c  0000000000000318  0000000000000318  00000318  2**0
#                   CONTENTS, ALLOC, LOAD, READONLY, DATA
#   1 .note.gnu.property 00000030  0000000000000338  0000000000000338  00000338  2**3
#                   CONTENTS, ALLOC, LOAD, READONLY, DATA
#   2 .note.gnu.build-id 00000024  0000000000000368  0000000000000368  00000368  2**2
# ...

	_file = get_section_file()
	_len = read_file(_file, _arr)
	if (_len < 0)
		file_error_quit(_file)

	for (_i = 1; _i <= _len; ++_i) {

		_line = _arr[_i]
		gsub("^[[:space:]]+|[[:space:]]+$", "", _line)
		split(_line, _arr_2, "[[:space:]]+")

		if (match(_arr_2[1], "^[[:digit:]]+$")) {
			_name = _arr_2[2]
			_size = _arr_2[3]
			_start = _arr_2[5]

			section_save_name(_name)
			section_save_start(_name, _start)
			section_save_size(_name, _size)
		}
	}
}
function read_input() {
	read_data()
	read_code()
	read_sections()
}

function PREF_SEP() {return "|"}
function FIELD_SEP() {return ";"}
function output_data(    _arr, _len, _i, _name, _print_name, _select,
_ps, _fs) {

	_ps = PREF_SEP()
	_fs = FIELD_SEP()
	_select = get_section_select()
	_len = hexr_section_get_all(_arr)

	for (_i = 1; _i <= _len; ++_i) {

		_name = _arr[_i]
		if (!match(_name, _select))
			continue

		_print_name = _name
		print sprintf("data%s%s%s%s", \
			_ps, \
			_print_name, _fs, \
			hexr_section_get_hex(_name))
	}
}
function output_code(    _arr_sct, _len_sct, _arr_fn, _len_fn,
_arr_code, _len_code, _i, _j, _k, _name_sct, _name_fn, _select, _ignore,
_ps, _fs) {

	_ps = PREF_SEP()
	_fs = FIELD_SEP()
	_select = get_code_select()
	_ignore = get_func_ignore()

	_len_sct = coder_section_get_all(_arr_sct)
	for (_i = 1; _i <= _len_sct; ++_i) {

		_name_sct = _arr_sct[_i]
		if (!match(_name_sct, _select))
			continue

		_len_fn = coder_section_get_functions(_name_sct, _arr_fn)
		for (_j = 1; _j <= _len_fn; ++_j) {

			_name_fn = _arr_fn[_j]
			if (match(_name_fn, _ignore))
				continue

			_len_code = coder_section_get_function_code(_name_sct, \
				_name_fn, _arr_code)

			print sprintf("code%sfunction%s%s", _ps, _fs, _name_fn)
			for (_k = 1; _k <= _len_code; ++_k) {
				# remove ornamentation from names, e.g.
				# <printf@plt> to printf
				gsub("<|>|@.*$", "", _arr_code[_k])
				print sprintf("code%s%s", _ps, _arr_code[_k])
			}
		}
	}
}
function output_sections(    _arr_sct, _len_sct, _name, _i, _select, _ps, _fs) {

	_ps = PREF_SEP()
	_fs = FIELD_SEP()
	_select = get_section_select()
	_len_sct = section_get_names(_arr_sct)
	for (_i = 1; _i <= _len_sct; ++_i) {

		_name = _arr_sct[_i]
		if (!match(_name, _select))
			continue

		print sprintf("section%s%s%s%s%s%s", _ps, _name, _fs, \
			section_get_start(_name), _fs, \
			section_get_size(_name))
	}

}
function print_output() {
	output_sections()
	output_data()
	output_code()
}

function main() {
	read_input()
	print_output()
}

BEGIN {
	init()
	main()
}
# </main>
# <hex-reader>
# Expected input:
# <title-start-at>
# <offest-field> <hex-values-field> <hex-values-field>* <ascii-field>
#
# E.g.
# Contents of section .dynsym:
# 0418 00000000 00000000 48000000 12000000  ........H.......

function hexr_section_start_rx(str) {_CB_hexr_section_start_rx = str}
function _hexr_get_section_start_rx() {return _CB_hexr_section_start_rx}

function hexr_name_from_section_start_rx(str) {
	_CB_hexr_name_from_section_start_rx = str
}
function _hexr_get_name_from_section_start_rx() {
	return _CB_hexr_name_from_section_start_rx
}

function _HEXR_ST_LOOK_FOR_SECTION() {return 1}
function _HEXR_ST_GET_FIRST_LINE() {return 2}
function _HEXR_ST_GET_NEXT_LINE() {return 3}
function _hexr_set_state(st) {_CB_hexr_read_state = st}
function _hexr_get_state() {return _CB_hexr_read_state}

function hexr_get_error() {return _CB_hexr_err}
function _hexr_set_error(str) {_CB_hexr_err = ("hex-reader: " str)}

function _HEXR_SUBSEP() {return SUBSEP}
function _HEXR_START() {return "start"}
function _HEXR_HEX() {return "hex"}
function _HEXR_ALL() {return "all"}
function _hexr_section_init(start_at) {
	if (!match(start_at, _hexr_get_name_from_section_start_rx())) {
		_hexr_set_error(sprintf("no name in section title '%s'", start_at))
		return 0
	}
	_CB_hexr_section_name = substr(start_at, RSTART, RLENGTH)
	sub(":", "", _CB_hexr_section_name)

	if (!(_CB_hexr_section_name in _CB_hexr_section_map)) {
		_CB_hexr_section_map[_CB_hexr_section_name]
		_CB_hexr_section_map[_HEXR_ALL()] = \
			_hexr_subsep_cat(_CB_hexr_section_map[_HEXR_ALL()], \
				_CB_hexr_section_name)
	}
	return 1
}
function _hexr_fld_cat(arr, start, end,    _str) {
	while (start <= end)
		_str = (_str arr[start++])
	return _str
}
function _hexr_get_hex(arr, len) {return _hexr_fld_cat(arr, 2, len)}
function _hexr_subsep_cat(a, b) {
	if (a && !b) return a
	if (b && !a) return b
	return (a _HEXR_SUBSEP() b)
}
function _hexr_subsep_split(str, arr_out) {
	return split(str, arr_out, _HEXR_SUBSEP())
}
function _hexr_section_set_start(addr,    _tmp) {
	_tmp = _hexr_subsep_cat(_CB_hexr_section_name, _HEXR_START())
	_CB_hexr_section_map[_tmp] = addr
}
function _hexr_section_append_hex(hex) {
	_tmp = _hexr_subsep_cat(_CB_hexr_section_name, _HEXR_HEX())
	_CB_hexr_section_map[_tmp] = (_CB_hexr_section_map[_tmp] hex)
}

function _HEXR_LINE_FMT() {
	return " *<offest-field> <hex-values-field>+  <ascii-field>"
}
function _hexr_check_fields_for_hex(arr, len,    _i) {
	for (_i = 1; _i <= len; ++_i) {
		if (!match(arr[_i], "[[:xdigit:]]+"))
			return 0
	}
	return 1
}

function hexr_section_get_all(arr_out) {
	return _hexr_subsep_split(_CB_hexr_section_map[_HEXR_ALL()], arr_out)
}
function hexr_section_get_start(name,    _tmp) {
	_tmp = _hexr_subsep_cat(name, _HEXR_START())
	return _CB_hexr_section_map[_tmp]
}
function hexr_section_get_hex(name,    _tmp) {
	_tmp = _hexr_subsep_cat(name, _HEXR_HEX())
	return _CB_hexr_section_map[_tmp]
}

function _hexr_get_section_start(line) {
	if (!match(line, "[[:xdigit:]]+ ")) {
		_hexr_set_error(sprintf("start address expected in line '%s'", line))
		return ""
	}
	return substr(line, RSTART, RLENGTH-1)
}
function _hexr_get_hex_part(line,    _tmp) {
	_tmp = line
	# remove address from the front
	sub("^[[:space:]]*[[:xdigit:]]+ ", "", _tmp)
	# remove ascii part from the back
	sub("[[:space:]]{2}.*$", "", _tmp)
	# remove spaces
	gsub("[[:space:]]+", "", _tmp)

	if (!match(_tmp, "^[[:xdigit:]]+$")) {
		_hexr_set_error(sprintf("line '%s' not in format '%s'",\
			line, _HEXR_LINE_FMT()))
		return ""
	}

	return _tmp
}

function hexr_read(line,    _st, _tmp) {

	_st = _hexr_get_state()

	if (!_st) {
		_hexr_set_state(_HEXR_ST_LOOK_FOR_SECTION())
		_st = _hexr_get_state()
	}

	if (_HEXR_ST_LOOK_FOR_SECTION() == _st) {

		if (match(line, _hexr_get_section_start_rx())) {

			if (!_hexr_section_init(line))
				return 0

			_hexr_set_state(_HEXR_ST_GET_FIRST_LINE())
		}

	} else if (_HEXR_ST_GET_FIRST_LINE() == _st) {

		if (match(line, _hexr_get_section_start_rx())) {
			_hexr_set_state(_HEXR_ST_LOOK_FOR_SECTION())
			return hexr_read(line)
		}


		if (!(_tmp = _hexr_get_section_start(line)))
			return 0

		_hexr_section_set_start(_tmp)

		if (!(_tmp = _hexr_get_hex_part(line)))
			return 0

		_hexr_section_append_hex(_tmp)
		_hexr_set_state(_HEXR_ST_GET_NEXT_LINE())

	} else if (_HEXR_ST_GET_NEXT_LINE() == _st) {

		if (match(line, _hexr_get_section_start_rx())) {
			_hexr_set_state(_HEXR_ST_LOOK_FOR_SECTION())
			return hexr_read(line)
		}

		if (!(_tmp = _hexr_get_hex_part(line)))
			return 0

		_hexr_section_append_hex(_tmp)
		_hexr_set_state(_HEXR_ST_GET_NEXT_LINE())
	}

	return 1
}
# </hex-reader>
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
#@ <awklib_prog>
#@ Library: prog
#@ Description: Provides program name, error, and exit handling. Unlike
#@ other libraries, the function names for this library are not
#@ prepended.
#@ Version 1.0
##
## Vladimir Dinev
## vld.dinev@gmail.com
## 2021-08-15
#@

#
#@ Description: Sets the program name to 'str'. This name can later be
#@ retrieved by get_program_name().
#@ Returns: Nothing.
#
function set_program_name(str) {

	__LB_prog_program_name__ = str
}

#
#@ Description: Provides the program name.
#@ Returns: The name as set by set_program_name().
#
function get_program_name() {

	return __LB_prog_program_name__
}

#
#@ Description: Prints 'msg' to stderr.
#@ Returns: Nothing.
#
function pstderr(msg) {

	print msg > "/dev/stderr"
}

#
#@ Description: Sets a static flag which can later be checked by
#@ should_skip_end().
#@ Returns: Nothing.
#
function skip_end_set() {

	__LB_prog_skip_end_flag__ = 1
}

#
#@ Description: Clears the flag set by skip_end_set().
#@ Returns: Nothing.
#
function skip_end_clear() {

	__LB_prog_skip_end_flag__ = 0
}

#
#@ Description: Checks the static flag set by skip_end_set().
#@ Returns: 1 if the flag is set, 0 otherwise.
#
function should_skip_end() {

	return (__LB_prog_skip_end_flag__+0)
}

#
#@ Description: Sets a static flag which can later be checked by
#@ did_error_happen().
#@ Returns: Nothing
#
function error_flag_set() {

	__LB_prog_error_flag__ = 1
}

#
#@ Description: Clears the flag set by error_flag_set().
#@ Returns: Nothing
#
function error_flag_clear() {

	__LB_prog_error_flag__ = 0
}

#
#@ Description: Checks the static flag set by error_flag_set().
#@ Returns: 1 if the flag is set, 0 otherwise.
#
function did_error_happen() {

	return (__LB_prog_error_flag__+0)
}

#
#@ Description: Sets the skip end flag, exits with error code 0.
#@ Returns: Nothing.
#
function exit_success() {
	
	skip_end_set()
	exit(0)
}

#
#@ Description: Sets the skip end flag, exits with 'code', or 1 if 'code' is 0
#@ or not given.
#@ Returns: Nothing.
#
function exit_failure(code) {

	skip_end_set()
	exit((code+0) ? code : 1)
}

#
#@ Description: Prints '<program-name>: error: msg' to stderr. Sets the
#@ error and skip end flags.
#@ Returns: Nothing.
#
function error_print(msg) {

	pstderr(sprintf("%s: error: %s", get_program_name(), msg))
	error_flag_set()
	skip_end_set()
}

#
#@ Description: Calls error_print() and quits with failure.
#@ Returns: Nothing.
#
function error_quit(msg, code) {

	error_print(msg)
	exit_failure(code)
}
#@ </awklib_prog>
#@ <awklib_read>
#@ Library: read
#@ Description: Read lines or a file into an array.
#@ Version: 1.0
##
## Vladimir Dinev
## vld.dinev@gmail.com
## 2021-08-15
#@

#
#@ Description: Clears 'arr_out', reads 'fname' and saves the content in 
#@ 'arr_our'. 
#@ Returns: The number of lines read, which is also the length of
#@ 'arr_out', or less than 0 if an error has occurred.
#
function read_file(fname, arr_out,    _line, _i, _code) {

	delete arr_out
	_i = 0
	
	while ((_code = (getline _line < fname)) > 0)
		arr_out[++_i] = _line
	
	if (_code < 0)
		return _code
	
	close(fname)
	return _i
}

#
#@ Description: Clears 'arr_out', calls 'getline' and saves the lines
#@ read in 'arr_out'. If 'rx_until' is given, reading stops when a line
#@ matches 'rx_until'. The matched line is not saved. If 'rx_ignore' is
#@ given, only lines which do not match 'rx_ignore' are saved. If
#@ 'rx_until' and 'rx_ignore' are the same, only 'rx_until' is
#@ considered.
#@ Returns: The length of 'arr_out', or < 0 on error.
#
function read_lines(arr_out, rx_until, rx_ignore,    _line, _i,
_code) {

	delete arr_out
	_i = 0
	
	while ((_code = (getline _line)) > 0) {
		
		if (rx_until && match(_line, rx_until))
			break
		
		if (rx_ignore && match(_line, rx_ignore))
			continue
			
		arr_out[++_i] = _line
	}
	
	if (_code < 0)
		return _code
		
	return _i
}
#@ </awklib_read>
