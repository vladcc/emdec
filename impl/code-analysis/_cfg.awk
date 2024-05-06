# Control flow graph built on top of the basic blocks

# <cfg>
function CA_CFG_LAST() {return "last"}

function ca_cfg_init(    _i, _end) {
	_ca_cfg_init()
	ca_cfg_set_first(ca_bb_get_first())

	_end = ca_bb_get_count()
	for (_i = 1; _i <= _end; ++_i)
		_ca_cfg_link(_i)
}

function ca_cfg_set_first(n) {_BC_ca_cfg_first = n}
function ca_cfg_get_first() {return _BC_ca_cfg_first}

function ca_cfg_get_all(arr_out) {
	return split(_BC_ca_cfg_all, arr_out, ",")-1
}

function ca_cfg_has_next(n, nxt) {
	return index(_BC_ca_cfg_next_list[n], (nxt ","))
}
function ca_cfg_get_next(n, arr_out) {
	return split(_BC_ca_cfg_next_list[n], arr_out, ",")-1
}
function ca_cfg_get_next_str(n,    _ret) {
	if (n in _BC_ca_cfg_next_list) {
		_ret = _BC_ca_cfg_next_list[n]
		gsub(",", ", ", _ret)
		gsub(", $|last", "", _ret)
	}
	return _ret
}

function ca_cfg_has_prev(n, prev) {
	return index(_BC_ca_cfg_prev_list[n], (prev ","))
}
function ca_cfg_get_prev(n, arr_out) {
	return split(_BC_ca_cfg_prev_list[n], arr_out, ",")-1
}
function ca_cfg_get_prev_str(n,    _ret) {
	if (n in _BC_ca_cfg_prev_list) {
		_ret = _BC_ca_cfg_prev_list[n]
		gsub(",", ", ", _ret)
		gsub(", $|last", "", _ret)
	}
	return _ret
}

# <private>
function _ca_cfg_init() {
	_BC_ca_cfg_next_list[""]
	delete _BC_ca_cfg_next_list
	_BC_ca_cfg_prev_list[""]
	delete _BC_ca_cfg_prev_list
	_BC_ca_cfg_first = ""
	_BC_ca_cfg_all = ""
}

# error handle later

function _ca_cfg_add(n) {
	n = (n ",")
	if (!index(_BC_ca_cfg_all, n))
		_BC_ca_cfg_all = (_BC_ca_cfg_all n)
}

function _ca_cfg_add_next(n, nxt) {
	_ca_cfg_add(n)
	nxt = (nxt ",")
	if (!index(_BC_ca_cfg_next_list[n], nxt))
		_BC_ca_cfg_next_list[n] = (_BC_ca_cfg_next_list[n] nxt)
}

function _ca_cfg_add_prev(n, prev) {
	_ca_cfg_add(n)
	prev = (prev ",")
	if (!index(_BC_ca_cfg_prev_list[n], prev))
		_BC_ca_cfg_prev_list[n] = (_BC_ca_cfg_prev_list[n] prev)
}

function _ca_cfg_link_next(bb,    _next) {
	if (ca_bb_is_return(bb)) {
		_next = CA_CFG_LAST()
		_ca_cfg_add_next(bb, _next)
	} else if (ca_bb_is_jump(bb)) {
		if (ca_bb_is_ccjump(bb)) {
			_next = ca_bb_find_bb_starting_at(ca_bb_get_end(bb)+1)
			_ca_cfg_add_next(bb, _next)
		}
		_next = ca_bb_find_bb_target_of_jump(ca_bb_get_bb_lbl_of_jump(bb))
		_ca_cfg_add_next(bb, _next)
	} else {
		_next = ca_bb_find_bb_starting_at(ca_bb_get_end(bb)+1)
		_ca_cfg_add_next(bb, _next)
	}
}

function _ca_cfg_link_prev(bb,    _prev, _arr, _len, _i) {
	if (ca_cfg_get_first() == bb)
		return

	if (ca_bb_is_target(bb)) {
		_len = ca_bb_find_bb_jumps_to_target(ca_bb_get_bb_lbl_of_target(bb), \
			_arr)

		for (_i = 1; _i <= _len; ++_i)
			_ca_cfg_add_prev(bb, _arr[_i])
	}

	_prev = ca_bb_find_bb_ending_at(ca_bb_get_start(bb)-1)
	if (!ca_bb_is_ujump(_prev) && !ca_bb_is_return(_prev))
		_ca_cfg_add_prev(bb, _prev)
}

function _ca_cfg_link(bb) {
	_ca_cfg_link_next(bb)
	_ca_cfg_link_prev(bb)
}
# </private>
# </cfg>
