# Def-use information for each instruction

# <du-instr>
# <public>
function ca_du_instr_init(    _code_len, _i, _arr, _len, _instr, _instr_line,
_start) {

	_ca_du_instr_init()

	_code_len = fncb_code_size()
	for (_i = 1; _i <= _code_len; ++_i) {
		_instr_line = fncb_instr_get(_i)
		_len = split(_instr_line, _arr, " ")

		_instr = _arr[1]
		if (IR_COND() == _instr)
			_instr = _arr[2]

		if (_ca_du_is_instr_def_and_use(_instr)) {
			_start = _ca_du_instr_determine_def(_i, _instr_line, _arr, 2, _len)
			if (!_start)
				return 0
			_ca_du_instr_determine_use(_i, _arr, _start, _len)
		} else if (_ca_du_is_instr_def_only(_instr)) {
			if (!_ca_du_instr_determine_def(_i, _instr_line, _arr, 2, _len))
				return 0
		} else if (_ca_du_is_instr_use_only(_instr)) {
			_ca_du_instr_determine_use(_i, _arr, 2, _len)
		} else if (_ca_du_is_instr_none(_instr)) {
			continue
		} else {
			_ca_du_instr_set_err(\
				sprintf("unknown IR instruction '%s'", _instr_line))
			return 0
		}
	}

	return 1
}

function ca_du_instr_has_def(instr_no) {
	return (instr_no in _BC_ca_du_instr_has_def)
}
function ca_du_instr_is_def(instr_no, var) {
	return index(_BC_ca_du_instr_def_var[instr_no], (var ","))
}
function ca_du_instr_get_defs(instr_no, arr_out) {
	return split(_BC_ca_du_instr_def_var[instr_no], arr_out, ",")-1
}

function ca_du_instr_has_use(instr_no) {
	return (instr_no in _BC_ca_du_instr_has_use)
}
function ca_du_instr_is_use(instr_no, var) {
	return index(_BC_ca_du_instr_use_var[instr_no], (var ","))
}
function ca_du_instr_get_uses(instr_no, arr_out) {
	return split(_BC_ca_du_instr_use_var[instr_no], arr_out, ",")-1
}
function ca_du_instr_get_err() {return _BC_ca_du_instr_err}
# </public>
# <private>
function _ca_du_instr_init() {
	_BC_ca_du_instr_def_subtype[""]
	delete _BC_ca_du_instr_def_subtype
	_BC_ca_du_instr_def_type[""]
	delete _BC_ca_du_instr_def_type
	_BC_ca_du_instr_def_var[""]
	delete _BC_ca_du_instr_def_var
	_BC_ca_du_instr_err = ""
	_BC_ca_du_instr_has_def[""]
	delete _BC_ca_du_instr_has_def
	_BC_ca_du_instr_has_use[""]
	delete _BC_ca_du_instr_has_use
	_BC_ca_du_instr_use_subtype[""]
	delete _BC_ca_du_instr_use_subtype
	_BC_ca_du_instr_use_type[""]
	delete _BC_ca_du_instr_use_type
	_BC_ca_du_instr_use_var[""]
	delete _BC_ca_du_instr_use_var
}

function _ca_du_instr_rx_init() {
	_BC__ca_du_isntr_rx_add_arr[""]
	delete _BC__ca_du_isntr_rx_add_arr
	_BC__ca_du_isntr_rx_add_len = 0
}
function _ca_du_isntr_rx_add(instr) {
	_BC__ca_du_isntr_rx_add_arr[++_BC__ca_du_isntr_rx_add_len] = instr
}
function _ca_du_instr_rx_make(arr, len,    _i, _rx, _instr) {
	for (_i = 1; _i <= _BC__ca_du_isntr_rx_add_len; ++_i) {
		_instr = _BC__ca_du_isntr_rx_add_arr[_i]
		_rx = (!_rx) ? _instr : (_rx "|" _instr)
	}
	_ca_du_instr_rx_init()
	return sprintf("^(%s)$", _rx)
}
function _ca_du_is_instr_def_only(instr) {
	if (!_BC__ca_du_is_instr_def_only_rx) {
		_ca_du_isntr_rx_add(IR_POP())
		_BC__ca_du_is_instr_def_only_rx = _ca_du_instr_rx_make()
	}
	return match(instr, _BC__ca_du_is_instr_def_only_rx)
}

function _ca_du_is_instr_use_only(instr) {
	if (!_BC__ca_du_is_instr_use_only_rx) {
		_ca_du_isntr_rx_add(IR_COMPAR())
		_ca_du_isntr_rx_add(IR_PUSH())
		_BC__ca_du_is_instr_use_only_rx = _ca_du_instr_rx_make()
	}
	return match(instr, _BC__ca_du_is_instr_use_only_rx)
}
function _ca_du_is_instr_def_and_use(instr) {
	if (!_BC__ca_du_is_instr_def_and_use_rx) {
		_ca_du_isntr_rx_add(IR_STORE())
		_ca_du_isntr_rx_add(IR_LOAD())
		_ca_du_isntr_rx_add(IR_ASSIGN())
		_BC__ca_du_is_instr_def_and_use_rx = _ca_du_instr_rx_make()
	}
	return (ir_is_instr_alu(instr) \
		|| match(instr, _BC__ca_du_is_instr_def_and_use_rx))
}
function _ca_du_is_instr_none(instr) {
	if (!_BC__ca_du_is_instr_none_rx) {
		_ca_du_isntr_rx_add(IR_CALL())
		_ca_du_isntr_rx_add(IR_JUMP())
		_ca_du_isntr_rx_add(IR_JUMP_REG())
		_ca_du_isntr_rx_add(IR_LBL())
		_ca_du_isntr_rx_add(IR_RETURN())
		_ca_du_isntr_rx_add(IR_CAST())
		_BC__ca_du_is_instr_none_rx = _ca_du_instr_rx_make()
	}
	return match(instr, _BC__ca_du_is_instr_none_rx)
}

function _ca_du_instr_determine_def(instr_no, instr_str, arr_instr, start, len,
    _i, _type, _subtype, _op, _state) {
	# States:
	# 1 - def op type
	# 2 - def op name

	_state = 1
	for (_i = start; _i <= len; ++_i) {
		if (1 == _state) {
			_type = arr_instr[_i]
			_subtype = ""
			if (_i == start \
				&& (ir_is_type_reg(_type) || ir_is_type_mem(_type))) {
				_state = 2
			} else {
				_ca_du_instr_set_err(sprintf("bad op 1 type '%s'", _type))
				return 0
			}
		} else if (2 == _state) {
			_op = arr_instr[_i]
			if (ir_is_type_expr(_op) && ir_is_type_mem(_type)) {
				_subtype = _op
				continue
			}
			_ca_du_instr_def(instr_no, _op, _type, _subtype)
			return _i+1
		}
	}

	_ca_du_instr_set_err(sprintf("no definition of var in '%s'", instr_str))
	return 0
}

function _ca_du_instr_determine_use(instr_no, arr_instr, start, len,    _i,
_type, _subtype, _op, _state) {
	# States:
	# 1 - use op type
	# 2 - use op name

	_state = 1
	for (_i = start; _i <= len; ++_i) {
		if (1 == _state) {
			_type = arr_instr[_i]
			_subtype = ""
			if (ir_is_type_reg(_type) || ir_is_type_mem(_type) \
				|| ir_is_type_expr(_type))
				_state = 2
		} else if (2 == _state) {
			_op = arr_instr[_i]
			if (ir_is_type_expr(_op) && ir_is_type_mem(_type)) {
				_subtype = _op
				continue
			}

			_ca_du_instr_use(instr_no, _op, _type, _subtype)
			_state = 1
		}
	}
}

function _ca_du_instr_def(instr_no, var, type, subtype) {
	var = (var ",")
	type = (type ",")
	subtype = (subtype ",")
	if (!index(_BC_ca_du_instr_def_var[instr_no], var)) {
		_BC_ca_du_instr_def_var[instr_no] = \
			(_BC_ca_du_instr_def_var[instr_no] var)
		_BC_ca_du_instr_def_type[instr_no] = \
			(_BC_ca_du_instr_def_type[instr_no] type)
		_BC_ca_du_instr_def_subtype[instr_no] = \
			(_BC_ca_du_instr_def_subtype[instr_no] subtype)
		_BC_ca_du_instr_has_def[instr_no]
	}
}

function _ca_du_instr_use(instr_no, var, type, subtype) {
	var = (var ",")
	type = (type ",")
	subtype = (subtype ",")
	if (!index(_BC_ca_du_instr_use_var[instr_no], var)) {
		_BC_ca_du_instr_use_var[instr_no] = \
			(_BC_ca_du_instr_use_var[instr_no] var)
		_BC_ca_du_instr_use_type[instr_no] = \
			(_BC_ca_du_instr_use_type[instr_no] type)
		_BC_ca_du_instr_use_subtype[instr_no] = \
			(_BC_ca_du_instr_use_subtype[instr_no] subtype)
		_BC_ca_du_instr_has_use[instr_no]
	}
}

function _ca_du_instr_set_err(msg) {_BC_ca_du_instr_err = ("ca_du: " msg)}

# </private>
# </du-instr>
