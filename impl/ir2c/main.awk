#!/usr/bin/awk -f

# <const>
function END_BIG() {return "big"}
function END_LITTLE() {return "little"}
# </const>

# <main>
function opt_set_endian(str) {_B_endian = str}
function opt_get_endian() {return _B_endian}
function opt_set_hex2dec(flag) {_B_hex_dec_conv = flag}
function opt_get_hex2dec() {return _B_hex_dec_conv}

function init() {

	# give on cmd line later
	Endian = END_LITTLE()

	opt_set_endian(Endian)

	db_init("data/x64-reg.txt", "data/x64-lin-callconv.txt", \
		"data/ctypes-lp64.txt", "data/clib.txt", "data/includes.txt")
}
# <awk-loop>
BEGIN {
	init()
	FS = "|"
}

{
	if ("section" == $1) {section_read($2)}
	else if ("data" == $1) {data_read($2)}
	else if ("code" == $1) {code_read($2)}
	else if ("expr" == $1) {expr_read($2)}
	else if ("adhoc" == $1) {adhoc_read($2)}
	else {error()}
}

END {
	to_c()
}
# </awk-loop>

# <common-to-c>
function fsep_spilt(str, arr_out) {return split(str, arr_out, ";")}
function map_to_arr(map, arr_out,    _n, _i) {
	delete arr_out
	for (_n in map)
		arr_out[++_i] = _n
	return _i
}

function section_save_name(name) {_B_section_names[name]}
function section_get_names(arr_out) {
	return map_to_arr(_B_section_names, arr_out)
}
function section_save_start(name, addr) {
	_B_section_starts[name] = addr
	_B_section_name_by_dec_addr[hex2dec(addr)] = name
}
function section_by_addr(addr, arr_name_offs_pair,    _dec, _n, _candidate) {
	delete arr_name_offs_pair

	_candidate = 0
	_dec = hex2dec(addr)
	for (_n in _B_section_name_by_dec_addr) {

		if (_n == _dec) {
			_candidate = _n
			break
		}

		if (_n < _dec && _n > _candidate)
			_candidate = _n
	}

	if (0 == _candidate)
		return 0

	arr_name_offs_pair[1] = _B_section_name_by_dec_addr[_candidate]
	arr_name_offs_pair[2] = dec2hex(_dec - _candidate)
	return 1
}
function section_get_start(name) {return _B_section_starts[name]}
function section_save_size(name, size) {_B_section_sizes[name] = size}
function section_get_size(name) {return _B_section_sizes[name]}
function section_read(str,    _arr, _name, _start, _size) {
	fsep_spilt(str, _arr)
	_name = _arr[1]
	_start = _arr[2]
	_size = _arr[3]
	section_save_name(_name)
	section_save_start(_name, _start)
	section_save_size(_name, _size)
}
function section_access(name, offs_dec, read_size, endian,    _val, _arr) {

	# <var>*2 cause 1 byte is 2 hex chars
	_val = substr(data_get(name), offs_dec*2, read_size*2)

	if (END_LITTLE() == endian) {
		gsub("..", "& ", _val)
		split(_val, _arr, " ")

		_val = ""
		for (_i = read_size; _i >= 1; --_i)
			_val = (_val _arr[_i])
	} else if (END_BIG() != endian) {
		return _val = ""
	}

	return _val
}

function data_save(name, data) {_B_section_data[name] = data}
function data_get(name) {return _B_section_data[name]}
function data_read(str,    _arr, _name, _data) {
	fsep_spilt(str, _arr)
	_name = _arr[1]
	_data = _arr[2]
	section_save_name(_name)
	data_save(_name, _data)
}

function expr_read(expr,    _id, _rest, _arr) {
	split(expr, _arr, " ")
	_id = _arr[1]
	_rest = substr(expr, index(expr, " ")+1)
	# remove length
	_rest = substr(_rest, index(_rest, " ")+1)
	if (!(_id in _B_expr_read_tbl)) {
		_B_expr_read_tbl[_id] = _rest
		_B_expr_len_tbl[_id] = _arr[2]
		_B_expr_type_tbl[_id] = _arr[3]
	}
}
function expr_has(id) {return (id in _B_expr_read_tbl)}
function expr_get(id) {return _B_expr_read_tbl[id]}
function expr_len(id) {return _B_expr_len_tbl[id]}
function expr_type(id) {return _B_expr_type_tbl[id]}
function expr_fld(id, fld,    _arr) {
	split(_B_expr_read_tbl[id], _arr, " ")
	return _arr[fld]
}

function adhoc_read(str) {_BC_adhoc_read_tbl[++_BC_adhoc_read_tbl_len] = str}
function adhoc_len() {return _BC_adhoc_read_tbl_len}
function adhoc_get(n) {return _BC_adhoc_read_tbl[n]}
# </common-to-c>
# </main>
