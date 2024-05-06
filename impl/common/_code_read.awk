# <code-read>
function code_fn_start(name) {
	_BC_code_last_fname = name
	_BC_code_fnames[++_BC_code_fnames_len] = _BC_code_last_fname
	++_BC_code_len
	_BC_code_fstart[_BC_code_last_fname] = _BC_code_len
	_BC_code_fend[_BC_code_last_fname] = _BC_code_len
}
function code_save(line) {
	_BC_code_arr[_BC_code_len] = line
	_BC_code_fend[_BC_code_last_fname] = _BC_code_len
	++_BC_code_len
}
function code_get_fn_names(arr_out,    _i) {
	delete arr_out
	for (_i = 1; _i <= _BC_code_fnames_len; ++_i)
		arr_out[_i] = _BC_code_fnames[_i]
	return _BC_code_fnames_len
}
function code_get_fn_code(name, arr_out,    _len, _start, _end) {
	delete arr_out
	_start = _BC_code_fstart[name]
	_end = _BC_code_fend[name]
	while (_start <= _end)
		arr_out[++_len] = _BC_code_arr[_start++]
	return _len
}
function code_has_fn(name) {
	return (name in _BC_code_fstart)
}
function code_rename_fn(from, to,    _a, _b, _i) {

	# to support recursive decompilation

	if (from in _BC_code_fstart) {
		_i = _BC_code_fstart[from]
		delete _BC_code_fstart[from]
		_BC_code_fstart[to] = _i
	}

	if (from in _BC_code_fend) {
		_i = _BC_code_fend[from]
		delete _BC_code_fend[from]
		_BC_code_fend[to] = _i
	}

	_a = ("^" from "$")
	_b = to
	for (_i = 1; _i <= _BC_code_fnames_len; ++_i)
		sub(_a, _b, _BC_code_fnames[_i])

	_a = (" " from "$")
	_b = (" " to)
	for (_i = 1; _i <= _BC_code_len; ++_i)
		sub(_a, _b, _BC_code_arr[_i])
}
function code_read(str,    _name) {
	if (match(str, "^function.")) {
		_name = substr(str, RSTART+RLENGTH)
		code_fn_start(_name)
	} else {
		code_save(str)
	}
}
# </code-read>
