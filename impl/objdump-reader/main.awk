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
