# A "database" for all needed information, e.g. arch register sets, function
# signatures, call conventions, etc.

# <db>
# <public>
# <init>
function db_init(reg_file, call_conv_file, ctypes_file, fn_file, includes,
_farr, _flen, _fname) {

	_fname = reg_file
	_flen = read_file(_fname, _farr)
	if (_flen < 0) {
		_db_error_set(sprintf("%s: %s", _fname, ERRNO))
		return 0
	}
	if (!_db_insert_reg_data(_fname, _farr, _flen))
		return 0

	_fname = call_conv_file
	_flen = read_file(_fname, _farr)
	if (_flen < 0) {
		_db_error_set(sprintf("%s: %s", _fname, ERRNO))
		return 0
	}
	if (!_db_insert_ccv(_fname, _farr, _flen))
		return 0

	_fname = ctypes_file
	_flen = read_file(_fname, _farr)
	if (_flen < 0) {
		_db_error_set(sprintf("%s: %s", _fname, ERRNO))
		return 0
	}
	if (!_db_insert_ctypes(_fname, _farr, _flen))
		return 0

	_fname = fn_file
	_flen = read_file(_fname, _farr)
	if (_flen < 0) {
		_db_error_set(sprintf("%s: %s", _fname, ERRNO))
		return 0
	}
	if (!_db_insert_fn_lib(_fname, _farr, _flen))
		return 0

	_fname = includes
	_flen = read_file(_fname, _farr)
	if (_flen < 0) {
		_db_error_set(sprintf("%s: %s", _fname, ERRNO))
		return 0
	}
	if (!_db_insert_includes(_fname, _farr, _flen))
		return 0

	return 1
}
# </init>
# <err>
function db_error_get() {return _BC_db_error}
# </err>
# <call-conv>
function db_ccv_get_all_int_pass_reg(arr_out) {
	return split(_BC_db_ccv_int_pass_all_regs, arr_out, ",")-1
}
function db_ccv_get_int_arg_num(reg) {
	return (reg in _BC_db_ccv_int_pass) ? _BC_db_ccv_int_pass[reg] : 0
}
function db_ccv_get_float_arg_num(reg) {
	return (reg in _BC_db_ccv_float_pass) ? _BC_db_ccv_float_pass[reg] : 0
}
function db_ccv_get_max_int_reg_args() {
	return _BC_db_ccv_int_reg_arg_num_max
}

function db_ccv_get_all_float_pass_reg(arr_out) {
	return split(_BC_db_ccv_float_pass_all_regs, arr_out, ",")-1
}
function db_ccv_get_max_float_reg_args() {
	return _BC_db_ccv_float_reg_arg_num_max
}
function db_ccv_get_stack_base() {
	return _BC_db_ccv_stack_base
}
function db_ccv_get_stack_top() {
	return _BC_db_ccv_stack_top
}
function db_ccv_get_iret_regs(arr_out,    _i, _n) {
	delete arr_out
	_i = 0
	for (_n in _BC_db_ccv_int_ret)
		arr_out[++_i] = _n
	return _i
}
function db_ccv_is_int_ret_reg(reg_name) {
	return (reg_name in _BC_db_ccv_int_ret)
}
function db_ccv_is_float_ret_reg(reg_name) {
	return (reg_name in _BC_db_ccv_float_ret)
}
# </call-conv>
# <reg>
function db_reg_has(name) {
	return (name in _BC_db_reg_name)
}

function db_reg_get_type(name) {
	return _BC_db_reg_type[name]
}
function db_reg_get_size(name) {
	return _BC_db_reg_size[name]
}
# </reg>
# <ctypes>
function db_ctype_get_rx_of_type_str(type_str,    _i) {
	for (_i = 1; _i <= _BC_db_ctype_rxs_len; ++_i) {
		if (match(type_str, _BC_db_ctype_rxs[_i]))
			return _BC_db_ctype_rxs[_i]
	}
	return ""
}
function db_ctype_get_type_of_rx(rx) {
	return _BC_db_ctype_rx_type[rx]
}
function db_ctype_get_size_of_rx(rx) {
	return _BC_db_ctype_rx_size[rx]
}
function db_ctype_get_size_of_type_str(type_str) {
	type_str = db_ctype_get_rx_of_type_str(type_str)
	return type_str ? db_ctype_get_size_of_rx(type_str) : ""
}
# </ctypes>
# <fn-info>
function db_fn_info_has_fn(name) {
	return (name in _BC_db_fn_ret_type)
}

function db_fn_info_get_ret_type(name) {
	return _BC_db_fn_ret_type[name]
}
function db_fn_info_get_params_arr(name, arr_out) {
	return split(_BC_db_fn_params[name], arr_out, ",")
}
function db_fn_info_is_fn_var_args(name) {
	return (name in _BC_db_fn_var_args)
}
# </fn-info>
# <includes>
function db_include_get(fname) {
	return (fname in _BC_db_includes) ? _BC_db_includes[fname] : ""
}
# </include>
# </public>

# <private>
# <init>
function _DB_LINE_COMMENT() {return "^[[:space:]]*#|^[[:space:]]*$"}
function _db_insert_reg_data(fname, arr, len,    _i, _arr, _len) {

	for (_i = 1; _i <= len; ++_i) {

		if (match(arr[_i], _DB_LINE_COMMENT()))
			continue

		_len = split(arr[_i], _arr, ",")
		if (_len != 3) {
			_db_error_set_bad_data(fname, _i)
			return 0
		}

		_db_reg_insert(_arr[1], _arr[2], _arr[3])
	}

	return 1
}
function _db_insert_ccv(fname, arr, len,    _i, _arr, _len) {

	for (_i = 1; _i <= len; ++_i) {

		if (match(arr[_i], _DB_LINE_COMMENT()))
			continue

		_len = split(arr[_i], _arr, ",")
		if ("pass" == _arr[1]) {
			if (_len != 4) {
				_db_error_set_bad_data(fname, _i)
				return 0
			}

			if ("i" == _arr[2]) {
				_db_ccv_insert_int_pass(_arr[3], _arr[4])
			} else if ("f" == _arr[2]) {
				_db_ccv_insert_float_pass(_arr[3], _arr[4])
			} else {
				_db_error_set_bad_data(fname, _i)
				return 0
			}
		} else if ("ret" == _arr[1]) {
			if (_len != 3) {
				_db_error_set_bad_data(fname, _i)
				return 0
			}

			if ("i" == _arr[2]) {
				_db_ccv_insert_int_ret(_arr[3])
			} else if ("f" == _arr[2]) {
				_db_ccv_insert_float_ret(_arr[3])
			} else {
				_db_error_set_bad_data(fname, _i)
				return 0
			}
		} else if ("stack" == _arr[1]) {
			if (_len != 3) {
				_db_error_set_bad_data(fname, _i)
				return 0
			}

			if ("base" == _arr[2]) {
				_db_ccv_insert_stack_base(_arr[3])
			} else if ("top" == _arr[2]) {
				_db_ccv_insert_stack_top(_arr[3])
			} else {
				_db_error_set_bad_data(fname, _i)
				return 0
			}
		} else {
			_db_error_set_bad_data(fname, _i)
			return 0
		}
	}

	return 1
}
function _db_insert_ctypes(fname, arr, len,    _i, _arr, _len) {

	for (_i = 1; _i <= len; ++_i) {

		if (match(arr[_i], _DB_LINE_COMMENT()))
			continue

		_len = split(arr[_i], _arr, ",")
		if (_len != 3) {
			_db_error_set_bad_data(fname, _i)
			return 0
		}
		_db_ctype_insert(_arr[1], _arr[2], _arr[3])
	}

	return 1
}
function _db_insert_fn_lib(fname, arr, len,    _i, _ret_type, _name,
_line, _idx) {

	for (_i = 1; _i <= len; ++_i) {

		if (match(arr[_i], _DB_LINE_COMMENT()))
			continue
		_line = arr[_i]

		_idx = index(_line, ",")
		if (!_idx) {
			_db_error_set_bad_data(fname, _i)
			return 0
		}
		_ret_type = substr(_line, 1, _idx-1)

		_line = substr(_line, _idx+1)

		_idx = index(_line, ",")
		if (!_idx) {
			_db_error_set_bad_data(fname, _i)
			return 0
		}
		_name = substr(_line, 1, _idx-1)

		if (!index(_line, ",")) {
			_db_error_set_bad_data(fname, _i)
			return 0
		}

		_db_fn_info_insert(_ret_type, _name, substr(_line, _idx+1))
	}

	return 1
}
function _db_insert_includes(fname, arr, len,    _i, _arr, _len) {
	for (_i = 1; _i <= len; ++_i) {

		if (match(arr[_i], _DB_LINE_COMMENT()))
			continue

		_len = split(arr[_i], _arr, ",")
		if (_len != 2) {
			_db_error_set_bad_data(fname, _i)
			return 0
		}
		_db_include_insert(_arr[1], _arr[2])
	}

	return 1
}
# </init>
# <call-conv>
function _db_ccv_insert_int_pass(reg_name, arg_num) {
	if (!(reg_name in _BC_db_ccv_int_pass)) {
		if (arg_num > _BC_db_ccv_int_reg_arg_num_max)
			_BC_db_ccv_int_reg_arg_num_max = arg_num
		_BC_db_ccv_int_pass[reg_name] = arg_num
		_BC_db_ccv_int_pass_all_regs = \
			(_BC_db_ccv_int_pass_all_regs reg_name ",")
	}
}
function _db_ccv_insert_int_ret(reg_name) {
	_BC_db_ccv_int_ret[reg_name]
}
function _db_ccv_insert_float_pass(reg_name, arg_num) {
	if (!(reg_name in _BC_db_ccv_float_pass)) {
		if (arg_num > _BC_db_ccv_float_reg_arg_num_max)
			_BC_db_ccv_float_reg_arg_num_max = arg_num
		_BC_db_ccv_float_pass[reg_name] = arg_num
		_BC_db_ccv_float_pass_all_regs = \
			(_BC_db_ccv_float_pass_all_regs reg_name ",")
	}
}
function _db_ccv_insert_float_ret(reg_name) {
	_BC_db_ccv_float_ret[reg_name]
}
function _db_ccv_insert_stack_base(reg_name) {
	_BC_db_ccv_stack_base = reg_name
}
function _db_ccv_insert_stack_top(reg_name) {
	_BC_db_ccv_stack_top = reg_name
}
# </call-conv>
# <reg>
function _db_reg_insert(type, name, size) {
	_BC_db_reg_name[name]
	_BC_db_reg_type[name] = type
	_BC_db_reg_size[name] = size
}
# </reg>
# <ctypes>
function _db_ctype_insert(type, rx, size) {
	_BC_db_ctype_rxs[++_BC_db_ctype_rxs_len] = rx
	_BC_db_ctype_rx_type[rx] = type
	_BC_db_ctype_rx_size[rx] = size
}
# </ctypes>
# <fn-info>
function _db_fn_info_insert(ret_type, name, params) {
	_BC_db_fn_ret_type[name] = ret_type
	_BC_db_fn_params[name] = params
	if (match(params, "\\.\\.\\."))
		_BC_db_fn_var_args[name]
}
# </fn-info>
# <includes>
function _db_include_insert(include, fname) {
	_BC_db_includes[fname] = include
}
# </includes>
# <err>
function _db_error_set_bad_data(fname, line) {
	_db_error_set(sprintf("%s: bad data on line %d", fname, line))
}
function _db_error_set(msg) {
	_BC_db_error = msg
}
# </err>
# </private>
# </db>
