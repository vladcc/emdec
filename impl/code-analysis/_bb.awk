# Divide the instruction stream in basic blocks

# <basic-blocks>
# <public>
function ca_bb_init(opt_dont_name_lbls) {
	_ca_bb_init()
	_ca_bb_find_all()
	if (!opt_dont_name_lbls)
		_ca_bb_name_lbls()
}

function ca_bb_get_first() {return 1}
function ca_bb_get_count() {return _BC_ca_bb_len}
function ca_bb_has(n) {return (n >= 1 && n <= _BC_ca_bb_len)}
function ca_bb_get_start(n) {return _BC_ca_bb_starts[n]}
function ca_bb_get_end(n) {return _BC_ca_bb_end[n]}

function ca_bb_get_bb_lbl_of_jump(n) {
	return _ca_bb_get_lbl_name(fncb_instr_get(ca_bb_get_end(n)))
}
function ca_bb_get_bb_lbl_of_target(n) {
	return _ca_bb_get_lbl_name(fncb_instr_get(ca_bb_get_start(n)))
}

function ca_bb_find_bb_target_of_jump(lbl,    _i, _end, _s, _e) {
	lbl = sprintf("^%s %s$", IR_LBL(), lbl)
	_end = ca_bb_get_count()
	for (_i = 1; _i <= _end; ++_i) {
		if (ca_bb_is_target(_i)) {
			_s = ca_bb_get_start(_i)
			_e = ca_bb_get_end(_i)
			if (_ca_bb_match_in_range(_s, _e, lbl))
				return _i
		}
	}
	return 0
}
function ca_bb_find_bb_jumps_to_target(lbl, arr_out,   _i, _end, _len) {
	delete arr_out
	_len = 0

	_end = ca_bb_get_count()
	lbl = sprintf("%s %s$", IR_JUMP(), lbl)
	for (_i = 1; _i <= _end; ++_i) {
		if (ca_bb_is_ccjump(_i) || ca_bb_is_ujump(_i)) {
			if (match(fncb_instr_get(ca_bb_get_end(_i)), lbl))
				arr_out[++_len] = _i
		}
	}
	return _len
}
function ca_bb_find_bb_starting_at(instr_no,    _i, _end) {
	_end = ca_bb_get_count()
	for (_i = 1; _i <= _end; ++_i) {
		if (ca_bb_get_start(_i) == instr_no)
			return _i
	}
	return 0
}
function ca_bb_find_bb_ending_at(instr_no,    _i, _end) {
	_end = ca_bb_get_count()
	for (_i = 1; _i <= _end; ++_i) {
		if (ca_bb_get_end(_i) == instr_no)
			return _i
	}
	return 0
}

function ca_bb_is_return(n) {
	if (!_BC_ca_bb_is_return_rx)
		_BC_ca_bb_is_return_rx = sprintf("^%s$", IR_RETURN())
	return match(fncb_instr_get(ca_bb_get_end(n)), _BC_ca_bb_is_return_rx)
}
function ca_bb_is_ccjump(n) {
	if (!_BC_ca_bb_is_ccjump_rx)
		_BC_ca_bb_is_ccjump_rx = sprintf("^(%s %s)", IR_COND(), IR_JUMP())
	return match(fncb_instr_get(ca_bb_get_end(n)), _BC_ca_bb_is_ccjump_rx)
}
function ca_bb_is_ujump(n) {
	if (!_BC_ca_bb_is_ujump_rx)
		_BC_ca_bb_is_ujump_rx = sprintf("^%s ", IR_JUMP())
	return match(fncb_instr_get(ca_bb_get_end(n)), _BC_ca_bb_is_ujump_rx)
}
function ca_bb_is_jump(n) {
	if (!_BC_ca_bb_is_jump_rx)
		_BC_ca_bb_is_jump_rx = sprintf("%s ", IR_JUMP())
	return match(fncb_instr_get(ca_bb_get_end(n)), "jump ")
}
function ca_bb_is_ujump_reg(n) {
	if (!_BC_bb_is_ujump_reg_rx)
		_BC_bb_is_ujump_reg_rx = sprintf("^%s ", IR_JUMP_REG())
	return match(fncb_instr_get(ca_bb_get_end(n)), _BC_bb_is_ujump_reg_rx)
}
function ca_bb_is_call(n) {
	if (!_BC_ca_bb_is_call_rx)
		_BC_ca_bb_is_call_rx = sprintf("^%s ", IR_CALL())
	return match(fncb_instr_get(ca_bb_get_end(n)), _BC_ca_bb_is_call_rx)
}
function ca_bb_is_target(n) {
	if (!_BC_ca_bb_is_target_rx)
		_BC_ca_bb_is_target_rx = sprintf("^%s ", IR_LBL())
	return match(fncb_instr_get(ca_bb_get_start(n)), _BC_ca_bb_is_target_rx)
}
# </public>

# <private>
function _ca_bb_get_lbl_name(instr) {
	return match(instr, "_[^:]+") ? substr(instr, RSTART, RLENGTH) : ""
}
function _ca_bb_name_lbls(    _i, _bbs, _new_name, _old_name, _arr, _len, _j,
_indx, _instr, _rx_lbl) {

	_bbs = ca_bb_get_count()
	for (_i = 1; _i <= _bbs; ++_i) {
		if (ca_bb_is_target(_i)) {
			_old_name = (ca_bb_get_bb_lbl_of_target(_i) "$")
			_new_name = ("_bb" _i)

			if (ca_bb_is_return(_i))
				_new_name = (_new_name "_return")

			_indx = ca_bb_get_start(_i)
			_instr = fncb_instr_get(_indx)
			sub(_old_name, _new_name, _instr)
			fncb_instr_set(_indx, _instr)

			_rx_lbl = sprintf("(%s|%s)", _old_name, _new_name)
			_len = ca_bb_find_bb_jumps_to_target(_rx_lbl, _arr)
			for (_j = 1; _j <= _len; ++_j) {
				_indx = ca_bb_get_end(_arr[_j])
				_instr = fncb_instr_get(_indx)
				sub(_old_name, _new_name, _instr)
				fncb_instr_set(_indx, _instr)
			}
		}
	}
}

function _ca_bb_init() {
	_BC_ca_bb_starts[""]
	delete _BC_ca_bb_starts
	_BC_ca_bb_end[""]
	delete _BC_ca_bb_end
	_BC_ca_bb_len = 0
}

function _ca_bb_find_all(    _start, _end, _code_len) {
	_start = 1
	_code_len = fncb_code_size()
	while (_start <= _code_len) {
		_end = _ca_bb_find_end(_start)
		_ca_bb_save(_start, _end)
		_start = _end+1
	}
	return ca_bb_get_count()
}
function _ca_bb_save(start, end,    _bb) {
	++_BC_ca_bb_len
	_BC_ca_bb_starts[_BC_ca_bb_len] = start
	_BC_ca_bb_end[_BC_ca_bb_len] = end
}
function _ca_bb_find_end(start,    _end, _code_len) {
	if (!_BC__ca_bb_find_end_jmp_call_ret_rx) {
		_BC__ca_bb_find_end_jmp_call_ret_rx = sprintf("%s|%s|%s",
			IR_JUMP(), IR_CALL(), IR_RETURN())
	}
	if (!_BC__ca_bb_find_end_lbl_rx)
		_BC__ca_bb_find_end_lbl_rx = sprintf("^%s ", IR_LBL())

	_code_len = fncb_code_size()
	for (_end = start; _end <= _code_len; ++_end) {

		if (match(fncb_instr_get(_end), _BC__ca_bb_find_end_jmp_call_ret_rx)) {
			break
		} else if (match(fncb_instr_get(_end), _BC__ca_bb_find_end_lbl_rx) \
			&& _end != start) {
			--_end
			break
		}
	}
	return _end
}
function _ca_bb_match_in_range(start, end, rx) {
	while (start <= end) {
		if (match(fncb_instr_get(start), rx))
			return 1
		++start
	}
	return 0
}
# </private>
# </basic-blocks>
