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
# <x64-ir2c>
# <out>
function const_hex2dec(str,    _dec) {
	while (match(str, "0x[[:xdigit:]]+")) {
		_dec = hex2dec(substr(str, RSTART, RLENGTH))
		sub("0x[[:xdigit:]]+", _dec, str)
	}
	return str
}
function out_get_tabs() {return _B_tabs}
function out_inc_tab() {_B_tabs = (_B_tabs "\t")}
function out_dec_tab() {_B_tabs = substr(_B_tabs, 1, length(_B_tabs)-1)}
function out(str) {out_str((str "\n"))}
function out_str(str) {
	if (opt_get_hex2dec())
		str = const_hex2dec(str)
	_B_out_x64_ir2c_out_buff[++_B_out_x64_ir2c_out_buff_len] = \
		sprintf("%s", (_B_tabs str))
}
function out_raw(str) {
	_B_out_x64_ir2c_out_buff[++_B_out_x64_ir2c_out_buff_len] = \
		sprintf("%s", str)
}
function out_expr(str) {out((str ";"))}
function out_comment(str) {out("// " str)}
function out_otag(str) {out_comment(sprintf("<%s>", str))}
function out_ctag(str) {out_comment(sprintf("</%s>", str))}
function out_err(str) {out(sprintf("#error \"%s\"", str))}
function out_err_instr(str, instr) {out_err(sprintf("%s - '%s'", str, instr))}
function out_flush(    _i) {
	for (_i = 1; _i <= _B_out_x64_ir2c_out_buff_len; ++_i)
		printf("%s", _B_out_x64_ir2c_out_buff[_i])
}
function out_nl() {out_raw("\n")}

function add_include(fname,    _inc) {
	if (_inc = db_include_get(fname))
		_B_x64_ir2c_add_include[_inc]
}
function print_includes(    _n) {
	print "#include <stdint.h>"
	for (_n in _B_x64_ir2c_add_include)
		print sprintf("#include %s", _n)
	print ""
}

function flush_all_output() {
	print_includes()
	out_flush()
}
# </out>

# <c-cast>
function ir_type_to_c_cast_type(ir_type) {
	if (!("" in _B_ir_type_to_c_type_tbl)) {
		_B_ir_type_to_c_type_tbl[""]
		_B_ir_type_to_c_type_tbl[IR_REG8()]  = U8()
		_B_ir_type_to_c_type_tbl[IR_REG16()] = U16()
		_B_ir_type_to_c_type_tbl[IR_REG32()] = U32()
		_B_ir_type_to_c_type_tbl[IR_REG64()] = U64()
		_B_ir_type_to_c_type_tbl[IR_MEM8()]  = U8()
		_B_ir_type_to_c_type_tbl[IR_MEM16()] = U16()
		_B_ir_type_to_c_type_tbl[IR_MEM32()] = U32()
		_B_ir_type_to_c_type_tbl[IR_MEM64()] = U64()
	}

	if (IR_CONST() == ir_type || !(ir_type in _B_ir_type_to_c_type_tbl))
		return 0
	return _B_ir_type_to_c_type_tbl[ir_type]
}
function ir_type_to_c_cast_with_err(ir_type, instr,    _res) {
	_res =  ir_type_to_c_cast_type(ir_type)
	if (!_res) {
		out_err_instr(\
			sprintf("could not find a C cast for IR type '%s'", ir_type),
			instr)
	}
	return _res
}
function c_cast_to_signed(c_type) {
	sub("^u", "", c_type)
	return c_type
}
# </c-cast>

# <expr>
function get_expr(arr_out, expr_id,    _i, _len, _end) {
	if (!expr_has(expr_id)) {
		out_err(sprintf("no expression with id '%s'", expr_id))
		return ""
	}
	return split(expr_get(expr_id), arr_out, " ")
}
function handle_expr(arr_expr, len,    _start, _res, _head) {
	if (!_start)
		_start = 1

	if (_start >= len)
		return _res

	_head = arr_expr[_start]
	if (ir_is_type_reg(_head)) {
		_head = arr_expr[++_start]
		_res = (_res deref(_head))
	} else if (match(_head, "-|\\+|\\*")) {
		_res = (_res _head)
	} else if (ir_is_type_const(_head)) {
		_head = arr_expr[++_start]
		_res = (_res _head)
	} else {
		return ""
	}

	return handle_expr(arr_expr, len, _start+1, _res)
}
function handle_expr_with_err(expr_id, instr,    _arr, _len, _res) {

	if (local_expr_is_local(expr_id))
		return local_expr_get_local_name(expr_id)

	if (expr_id in _B_handle_expr_with_err_cache)
		return _B_handle_expr_with_err_cache[expr_id]

	_len = get_expr(_arr, expr_id)
	_res = handle_expr(_arr, _len)

	if (!_res)
		out_err_instr("could not handle expression", instr)
	else
		_B_handle_expr_with_err_cache[expr_id] = _res

	return _res
}
# </expr>

# <calls>
function call_get_return_reg(fn_name, instr_line,    _tmp, _tmp2, _tmp3, _arr,
_len, _i, _ret_reg) {
	if (db_fn_info_has_fn(fn_name)) {
		# _tmp is now the return type of the functions
		_tmp = db_fn_info_get_ret_type(fn_name)
		if (!_tmp) {
			out_err_instr(\
				sprintf("unknown return type '%s' for function '%s'", \
					_tmp, fn_name), instr_line)
			return "error"
		}

		# _tmp2 is now the ctype
		_tmp2 = db_ctype_get_rx_of_type_str(_tmp)
		if (!_tmp2) {
			out_err(sprintf("'%s' doesn't match a known C type", \
				_tmp, fn_name))
			return "error"
		}

		# _tmp3 is now the size of the ctype
		_tmp3 = db_ctype_get_size_of_rx(_tmp2)
		# _tmp2 is now the fundamental type of the ctype
		_tmp2 = db_ctype_get_type_of_rx(_tmp2)

		if ("i" == _tmp2) {
			# int
			_len = db_ccv_get_iret_regs(_arr)
			if (!_len) {
				out_err("no int return registers in calling convention")
				return "error"
			}

			# _tmp is now the target reg
			_tmp = ""
			for (_i = 1; _i <= _len; ++_i) {
				if (db_reg_get_size(_arr[_i]) == _tmp3) {
					_tmp = _arr[_i]
					break
				}
			}

			if (!_tmp) {
				out_err(sprintf("no int return reg of size %s", _tmp3))
				return "error"
			}

			_ret_reg = _tmp
		} else if ("v" == _tmp2) {
			# void
			_ret_reg = ""
		} else {
			out_err(sprintf("unimplemented reg return type '%s'", _tmp2))
			return "error"
		}
	}

	return _ret_reg
}

function look_for_def_first(bb, arr_reg_pair,    _end, _start, _use, _def,
_r1, _r2) {
	_end = ca_bb_get_end(bb)
	_start = ca_bb_get_start(bb)
	_r1 = arr_reg_pair[1]
	_r2 = arr_reg_pair[2]

	while (_end >= _start) {
		_use = _def = ""

		_use = (ca_du_instr_has_use(_end) \
			&& (ca_du_instr_is_use(_end, _r1) \
				|| ca_du_instr_is_use(_end, _r2)))

		if (ca_du_instr_has_def(_end)) {
			if (ca_du_instr_is_def(_end, _r1))
				_def = _r1
			if (ca_du_instr_is_def(_end, _r2))
				_def = _r2
		}

		if (_use && !_def)
			return ""

		if (_def)
			return _def

		--_end
	}

	return ""
}
function walk_bb_look_for_reg(bb, arr_reg_pair, seen,    _reg, _arr, _len, _i,
_prev) {

	if (bb in seen)
		return ""

	seen[bb]

	if (_reg = look_for_def_first(bb, arr_reg_pair))
		return _reg

	if (ca_bb_get_first() == bb)
		return ""

	_len = ca_cfg_get_prev(bb, _arr)

	for (_i = 1; _i <= _len; ++_i) {
		_prev = _arr[_i]
		if (ca_bb_is_call(_prev))
			continue
		if (_reg = walk_bb_look_for_reg(_prev, arr_reg_pair, seen))
			return _reg
	}

	return ""
}
function make_ireg_pairs_to_match(arr_out,    _arr, _len, _i, _n, _reg) {
	arr_out[""]
	delete arr_out

	_len = db_ccv_get_all_int_pass_reg(_arr)
	for (_i = 1; _i <= _len; ++_i) {
		_reg = _arr[_i]
		_n = db_ccv_get_int_arg_num(_reg)

		if (arr_out[_n])
			arr_out[_n] = (arr_out[_n] ",")
		arr_out[_n] = (arr_out[_n] _reg)
	}
	return db_ccv_get_max_int_reg_args()
}
function call_get_var_args(fn_name, instr_no, arg_start_pos,    _i, _bb, _args,
_end, _reg, _arr_reg_pair, _seen_set) {
	# Register arguments heuristic for var arg functions is all call convention
	# registers defined but not used between this function call and either the
	# first basic block, or another function call.

	if (!_B_pairs_to_match_len)
		_B_pairs_to_match_len = make_ireg_pairs_to_match(_B_pairs_to_match_arr)

	_bb = ca_bb_find_bb_ending_at(instr_no)
	if (!_bb) {
		out_err(sprintf("call_get_var_args(): no basic block at instr no %d", \
			instr_no))
		return ""
	}

	_end = _B_pairs_to_match_len
	#out_comment("WARNING: only int reg args are considered")

	for (_i = arg_start_pos; _i <= _end; ++_i) {
		_seen_set[""]
		delete _seen_set

		split(_B_pairs_to_match_arr[_i], _arr_reg_pair, ",")
		if (_reg = walk_bb_look_for_reg(_bb, _arr_reg_pair, _seen_set)) {
			if (_args)
				_args = (_args ", ")
			_args = (_args deref(_reg))
		}
	}

	return _args
}
function call_get_fn_args(fn_name, instr_no,    _args, _arr, _len, _i, _arr2,
_len2, _j, _max_ireg_args, _max_freg_args, _ipass_arr, _ip_len, _fpass_arr,
_fp_len, _param, _cast, _reg, _ctype_rx, _ctype_sz, _ctype, _iargs, _fargs,
_db_reg) {

	if (!db_fn_info_has_fn(fn_name))
		return "error"

		_ip_len = db_ccv_get_all_int_pass_reg(_ipass_arr)
		_fp_len = db_ccv_get_all_float_pass_reg(_fpass_arr)
		_max_ireg_args = db_ccv_get_max_int_reg_args()
		_max_freg_args = db_ccv_get_max_float_reg_args()
		_len = db_fn_info_get_params_arr(fn_name, _arr)
		_iargs = 0
		_fargs = 0
		for (_i = 1; _i <= _len; ++_i) {
			_param = _arr[_i]
			if ("void" == _param) {
				return ""
			} else if ("..." == _param) {
				_args = _args ? (_args ", " call_get_var_args(fn_name, \
					instr_no, _i)) : call_get_var_args(fn_name, instr_no, _i)
			} else {
				# -1 to skip the parameter name
				_len2 = split(_param, _arr2, "[[:space:]]+")-1
				_cast = ""
				for (_j = 1; _j <= _len2; ++_j) {
					if (match(_arr2[_j], "volatile|restrict"))
						continue
					_cast = _cast ? (_cast " " _arr2[_j]) : _arr2[_j]
				}

			_ctype_rx = db_ctype_get_rx_of_type_str(_cast)
			if (!_ctype_rx) {
				out_err(sprintf("'%s' doesn't match a known C type", \
					_ctype_rx, fn_name))
				return "error"
			}

			_reg = ""
			_ctype_sz = db_ctype_get_size_of_rx(_ctype_rx)
			_ctype = db_ctype_get_type_of_rx(_ctype_rx)
			if ("i" == _ctype) {
				++_iargs
				if (_iargs <= _max_ireg_args) {
					for (_j = 1; _j <= _ip_len; ++_j) {
						_db_reg = _ipass_arr[_j]
						if (db_ccv_get_int_arg_num(_db_reg) == _iargs \
							&& db_reg_get_size(_ipass_arr[_j]) == _ctype_sz) {
							_reg = _db_reg
							break
						}
					}

					if (!_reg) {
						out_err(sprintf(\
							"no pass int register of size %s for arg %s found",\
								_ctype_sz, _iargs))
						return "error"
					}
				} else {
					out_err(sprintf("more than %s int args not supported", \
							_max_ireg_args))
				}
			} else if ("f" == _ctype) {
				++_fargs
				if (_fargs <= _max_freg_args) {
					for (_j = 1; _j <= _fp_len; ++_j) {
						_db_reg = _fpass_arr[_j]
						if (db_ccv_get_float_arg_num(_db_reg) == _fargs) {
							_reg = _db_reg
							break
						}
					}

					if (!_reg) {
						out_err(sprintf(\
							"no pass float register for arg %s found",\
								_fargs))
						return "error"
					}
				} else {
					out_err(sprintf("more than %s float args not supported",\
							_max_freg_args))
				}
			} else {
				out_err(sprintf("unknown argument fundamental type '%s'",\
					_ctype))
				return "error"
			}

			_args = _args ? (_args sprintf(", (%s)%s", _cast, deref(_reg))) : \
				sprintf("(%s)%s", _cast, deref(_reg))
		}
	}

	return _args
}

function handle_direct_call(fn_name, instr_no, instr_line,    _ret_reg, _args,
_fcall_str, _is_var_args, _reg_cast) {

	_is_var_args = db_fn_info_is_fn_var_args(fn_name)

	if (!_is_var_args && (fn_name in _B_direct_call_fn_arg_cache))
		return _B_direct_call_fn_arg_cache[fn_name]

	if (!db_fn_info_has_fn(fn_name)) {
		_fcall_str = sprintf("%s()", fn_name)
	} else {
		_ret_reg = call_get_return_reg(fn_name, instr_line)
		if ("error" == _ret_reg)
			return ""

		_args = call_get_fn_args(fn_name, instr_no)
		if ("error" == _args)
			return ""

		_reg_cast = db_reg_get_size(_ret_reg) == 8 ? U64() : U32()

		_fcall_str = _ret_reg ? \
			sprintf("%s = (%s)%s(%s)", deref(_ret_reg), _reg_cast, fn_name, \
				_args) : sprintf("%s(%s)", fn_name, _args)
	}


	if (!_is_var_args)
		_B_direct_call_fn_arg_cache[fn_name] = _fcall_str

	return _fcall_str
}
# </calls>

# <ir2c-instr>
function err_unhandled_type(type, which, instr) {
	out_err_instr(sprintf("unhandled type '%s' for op %d", type, which), instr)
}
function ir_arith_to_c_op(instr) {
	if (!("" in _B_ir_alu_to_c_op)) {
		_B_ir_alu_to_c_op[""]
		_B_ir_alu_to_c_op[IR_ADD()]  = "+"
		_B_ir_alu_to_c_op[IR_SUB()]  = "-"
		_B_ir_alu_to_c_op[IR_MUL()]  = "*"
		_B_ir_alu_to_c_op[IR_DIV()]  = "/"
		_B_ir_alu_to_c_op[IR_AND()]  = "&"
		_B_ir_alu_to_c_op[IR_OR()]   = "|"
		_B_ir_alu_to_c_op[IR_XOR()]  = "^"
		_B_ir_alu_to_c_op[IR_SHL()]  = "<<"
		_B_ir_alu_to_c_op[IR_SHR()]  = ">>"
		_B_ir_alu_to_c_op[IR_SHRA()] = ">>"
	}
	return (instr in _B_ir_alu_to_c_op) ? _B_ir_alu_to_c_op[instr] : ""
}
function ir2c_alu(instr_line, instr, arr,    _op1, _type1, _op2, _type2,
_lhs, _rhs, _ccast, _alu_op) {

	if (IR_MUL() == instr || IR_DIV() == instr) {
		out_err_instr("IR instruction not implemented", instr_line)
		return
	}

	# SHRA - handle sign cast
	_type1 = arr[2]
	_op1 = arr[3]

	_type2 = arr[4]
	_op2 = arr[5]

	if (ir_is_type_mem(_type1)) {
		_type2 = arr[5]
		_op2 = arr[6]

		if (ir_is_type_expr(_op1)) {
			_op1 = handle_expr_with_err(arr[4], instr_line)
		} else {
			err_unhandled_type(_type1, 1, instr_line)
			return
		}

		if (!(_ccast = ir_type_to_c_cast_with_err(_type1, instr_line)))
			return

		_op1 = sprintf("((%s*)(%s))", _ccast, _op1)
	} else if (!ir_is_type_reg(_type1)) {
		err_unhandled_type(_type1, 1, instr_line)
		return
	}

	_lhs = deref(_op1)
	if (ir_is_type_reg(_type2)) {
		_rhs = deref(_op2)
	} else if (ir_is_type_const(_type2)) {
		_rhs = _op2
	} else if (ir_is_type_mem(_type2)) {

		if (ir_is_type_expr(_op2)) {
			_op2 = handle_expr_with_err(arr[6], instr_line)
		} else {
			err_unhandled_type(_type2, 2, instr_line)
			return
		}
		if (!(_ccast = ir_type_to_c_cast_with_err(_type2, instr_line)))
			return

		_op2 = sprintf("((%s*)(%s))", _ccast, _op2)
		_rhs = deref(_op2)
	} else {
		err_unhandled_type(_type2, 2, instr_line)
		return
	}

	if (!(_alu_op = ir_arith_to_c_op(instr))) {
		out_err_instr("no C op for instruction", instr_line)
		return
	}

	out_expr(sprintf("%s %s= %s", _lhs, _alu_op, _rhs))
}
function ir2c_push(instr_line, arr,    _op, _type) {
	_type = arr[2]
	if (IR_REG64() == _type) {
		_op = arr[3]
		out_expr(sprintf("push_u64(%s)", deref(_op)))
	} else {
		err_unhandled_type(_type, 1, instr_line)
	}
}
function ir2c_pop(instr_line, arr,    _op, _type) {
	_type = arr[2]
	if (IR_REG64() == _type) {
		_op = arr[3]
		out_expr(sprintf("%s = pop_u64()", deref(_op)))
	} else {
		err_unhandled_type(_type, 1, instr_line)
	}
}
function ir2c_assign(instr_line, arr, len,    _op1, _type1, _op2, _type2, _lhs,
_rhs, _ccast, _cstr, _arr_pcr_pair, _c) {
	_type1 = arr[2]
	_op1 = arr[3]

	if (!ir_is_type_reg(_type1)) {
		err_unhandled_type(_type1, 1, instr_line)
		return
	}

	_lhs = sprintf("%s", deref(_op1))

	_type2 = arr[4]
	_op2 = arr[5]
	if (ir_is_type_expr(_type2)) {
		if (!(_rhs = handle_expr_with_err(_op2, instr_line)))
			return
	} else {
		if (ir_is_type_reg(_type2)) {
			_rhs = deref(_op2)
		} else if (ir_is_type_const(_type2)) {
			if ((IR_PCREL() == arr[len])) {
				if (!section_addr_to_name(_op2, _arr_pcr_pair, instr_line))
					return

				if (!(_ccast = ir_type_to_c_cast_with_err(_type1, instr_line)))
					return

				_cstr = c_str_from_section(_arr_pcr_pair[1], \
					_arr_pcr_pair[2], "\\.rodata")

				_rhs = sprintf("(%s)(%s+%s)", _ccast, \
					section_name_to_c_id(_arr_pcr_pair[1]),
					_arr_pcr_pair[2])
			} else {
				_rhs = _op2
			}
		}
	}

	_c = sprintf("%s = %s;", _lhs, _rhs)
	if (_cstr)
		_c = sprintf("%s // \"%s\"", _c, _cstr)
	out(_c)
}
function ir2c_store(instr_line, arr,    _op1, _type1, _op2, _type2, _lhs, _rhs,
_ccast, _pair) {
	_type1 = arr[2]
	if (!ir_is_type_mem(_type1)) {
		out_err_instr("bad store instruction destination", instr_line)
		return
	}

	_op1 = arr[3]
	if (!ir_is_type_expr(_op1)) {
		out_err_instr("first store op not an expr", instr_line)
		return
	}

	_lhs = handle_expr_with_err(arr[4], instr_line)
	if (!_lhs)
		return

	if (match(_lhs, "^0x[[:xdigit:]]+$")) {
		if (section_addr_to_name(_lhs, _pair)) {
			_lhs = sprintf("%s+%s", section_name_to_c_id(_pair[1]), _pair[2])
		} else {
			out_comment("WARNING: no section for the address below; " \
				"this will segafult")
		}
	}

	_type2 = arr[5]
	_op2 = arr[6]
	if (ir_is_type_reg(_type2)) {
		_rhs = deref(_op2)
	} else if (ir_is_type_const(_type2)) {
		_rhs = _op2
	} else {
		err_unhandled_type(_type2, 2, instr_line)
		return
	}

	if (!(_ccast = ir_type_to_c_cast_with_err(_type1, instr_line)))
		return

	out_expr(sprintf("%s = %s", deref(sprintf("((%s*)(%s))", _ccast, _lhs)), \
		_rhs))
}
function ir2c_load(instr_line, arr,    _op1, _type1, _op2, _type2, _lhs, _rhs,
_ccast, _expr_op_type, _expr_id, _arr_pcr_pair, _c) {
	_type1 = arr[2]
	if (!ir_is_type_reg(_type1)) {
		out_err_instr("bad load instruction destination", instr_line)
		return
	}

	_op1 = arr[3]
	_lhs = _op1

	_type2 = arr[4]
	if (!ir_is_type_mem(_type2)) {
		out_err_instr("bad load instruction source", instr_line)
		return
	}

	if (!(_ccast = ir_type_to_c_cast_with_err(_type2, instr_line)))
		return

	_op2 = arr[5]
	if (!ir_is_type_expr(_op2)) {
		out_err_instr("second load op not an expr", instr_line)
		return
	}

	_expr_id = arr[6]
	if (expr_len(_expr_id) == 2) {
		_expr_op_type = expr_type(_expr_id)
		_op2 = expr_fld(_expr_id, 2)
		if (ir_is_type_const(_expr_op_type)) {
			if (adhoc_sym_has_addr(_op2)) {
				_op2 = adhoc_sym_get_sym(_op2)
				_rhs = sprintf("(%s)%s", \
					ir_type_to_c_cast_with_err(_type1), _op2)
				_c = sprintf("%s = %s", deref(_lhs), _rhs)
			} else {
				if (!section_addr_to_name(_op2, _arr_pcr_pair, instr_line))
					return
				_rhs = sprintf("((%s*)(%s+%s))", _ccast, \
					section_name_to_c_id(_arr_pcr_pair[1]),
					_arr_pcr_pair[2])
			}
		} else if (ir_is_type_reg(_expr_op_type)) {
			_rhs = sprintf("((%s*)(%s))", _ccast, deref(_op2))
		} else {
			err_unhandled_type(_expr_op_type, 2, instr_line)
			return
		}
	} else {
		if (!(_rhs = handle_expr_with_err(_expr_id, instr_line)))
			return
		_rhs = sprintf("((%s*)(%s))", _ccast, _rhs)
	}

	if (!_c)
		_c = sprintf("%s = %s", deref(_lhs), deref(_rhs))

	out_expr(_c)
}
function ir2c_compar_push(instr) {
	# Saves the compar instr so it's processed by the cjump when the cjump
	# is seen. This is due to the possibility of having reordered instructions
	# between the compar and cjump.
	_B_ir2c_compar_instr = instr
}
function ir2c_compar_pop(    _ret) {
	_ret = _B_ir2c_compar_instr
	_B_ir2c_compar_instr = ""
	return _ret
}
function ir2c_last_compar_do(    _instr, _arr) {
	_instr = ir2c_compar_pop()
	instr_split(_instr, _arr)
	ir2c_compar_translate(_instr, _arr)
}
function ir2c_compar_translate(instr_line, arr,    _op1, _type1, _op2, _type2,
_lhs, _rhs, _sign_info, _rel_op, _ccast) {

	_sign_info = arr[2]
	_rel_op = arr[3]

	_type1 = arr[4]
	_op1 = arr[5]
	_type2 = arr[6]
	_op2 = arr[7]

	if (ir_is_type_reg(_type1)) {

		if (!(_ccast = ir_type_to_c_cast_with_err(_type1, instr_line)))
			return

		_lhs = deref(_op1)
	} else if (ir_is_type_mem(_type1)) {
		_type2 = arr[7]
		_op2 = arr[8]

		if (!(_ccast = ir_type_to_c_cast_with_err(_type1, instr_line)))
			return

		if (ir_is_type_expr(_op1)) {
			_op1 = handle_expr_with_err(arr[6], instr_line)
			_op1 = sprintf("((%s*)(%s))", _ccast, _op1)
			_lhs = deref(_op1)
		} else {
			err_unhandled_type(_type1, 1, instr_line)
			return
		}
	} else if (ir_is_type_const(_type1)) {
		_lhs = _op1
	} else {
		err_unhandled_type(_type1, 1, instr_line)
		return
	}

	if (ir_is_type_reg(_type2)) {

		if (!(_ccast = ir_type_to_c_cast_with_err(_type1, instr_line)))
			return

		_rhs = deref(_op2)
	} else if (ir_is_type_mem(_type2)) {

		if (!(_ccast = ir_type_to_c_cast_with_err(_type2, instr_line)))
			return

		if (ir_is_type_expr(_op2)) {
			_op2 = handle_expr_with_err(arr[8], instr_line)
			_op2 = sprintf("((%s*)(%s))", _ccast, _op2)
			_rhs = deref(_op2)
		} else {
			err_unhandled_type(_type2, 2, instr_line)
			return
		}
	} else if (ir_is_type_const(_type2))
		_rhs = _op2
	else {
		err_unhandled_type(_type2, 2, instr_line)
		return
	}

	if (IR_SIGNED() == _sign_info) {
		_ccast = c_cast_to_signed(_ccast)
		_lhs = sprintf("(%s)(%s)", _ccast, _lhs)
		_rhs = sprintf("(%s)(%s)", _ccast, _rhs)
	}

	out(sprintf("if (%s %s %s)", _lhs, _rel_op, _rhs))
}
function ir2c_lbl(lbl) {
	out((lbl ":"))
}
function ir2c_cond(instr_line, instr, arr) {
	if (IR_JUMP() == instr) {
		ir2c_last_compar_do()
		out_inc_tab()
		ir2c_jump(arr[3])
		out_dec_tab()
	} else {
		out_err_instr("unimplemented conditional", instr_line)
	}
}
function ir2c_jump(dest) {
	out_expr("goto " dest)
}
function ir2c_jump_reg(instr_line) {
	out_comment(instr_line)
}
function ir2c_call(instr_line, instr_no, fname,    _c) {
	sub("^__isoc[^_]+_", "", fname)
	add_include(fname)
	if (_c = handle_direct_call(fname, instr_no, instr_line))
		out_expr(_c)
}
function ir2c_return() {
	out_expr("return")
}
function ir2c_cast(instr_line, arr,    _op1, _op2) {
	if (IR_SIGNED() == arr[2] && IR_REG64() == arr[3]) {
		_op1 = arr[4]
		_op2 = arr[6]
		out_expr(sprintf("%s = (%s)(%s)", deref(_op1), I64(), deref(_op2)))
	} else {
		out_err_instr("unhandled cast", instr_line)
	}
}
function ir2c_unknown(instr_line) {
	out_err_instr("unknown IR instruction", instr_line)
}

function instr_split(instr_line, arr_out) {
	return split(instr_line, arr_out, " ")
}
function instr_to_c(instr_line, instr_no,    _arr, _len, _instr) {

	_len = instr_split(instr_line, _arr)
	_instr = _arr[1]

	if (ir_is_instr_alu(_instr))      ir2c_alu(instr_line, _instr, _arr)
	else if (IR_PUSH()     == _instr) ir2c_push(instr_line, _arr)
	else if (IR_POP()      == _instr) ir2c_pop(instr_line, _arr)
	else if (IR_ASSIGN()   == _instr) ir2c_assign(instr_line, _arr, _len)
	else if (IR_STORE()    == _instr) ir2c_store(instr_line, _arr)
	else if (IR_LOAD()     == _instr) ir2c_load(instr_line, _arr)
	else if (IR_COMPAR()   == _instr) ir2c_compar_push(instr_line)
	else if (IR_LBL()      == _instr) ir2c_lbl(_arr[2])
	else if (IR_COND()     == _instr) ir2c_cond(instr_line, _arr[2], _arr)
	else if (IR_JUMP()     == _instr) ir2c_jump(_arr[2])
	else if (IR_JUMP_REG() == _instr) ir2c_jump_reg(instr_line)
	else if (IR_CALL()     == _instr) ir2c_call(instr_line, instr_no, _arr[2])
	else if (IR_RETURN()   == _instr) ir2c_return()
	else if (IR_CAST()     == _instr) ir2c_cast(instr_line, _arr)
	else                              ir2c_unknown(instr_line)
}
# </ir2c-instr>

# <local-expr>
function local_expr_is_local(expr_id) {
	return (expr_id in _B_local_expr_define_map)
}
function local_expr_get_local_name(expr_id) {
	return _B_local_expr_define_map[expr_id]
}
function local_expr_init(    _instr, _code_len, _i, _expr_nm) {

	if (_B_local_expr_gather_len) {
		_B_local_expr_gather_len = 0
		_B_local_expr_gather_arr[""]
		delete _B_local_expr_gather_arr
		_B_local_expr_gather_set[""]
		delete _B_local_expr_gather_set
	}

	_code_len = fncb_code_size()
	for (_i = 1; _i <= _code_len; ++_i) {
		_instr = fncb_instr_get(_i)
		if (match(_instr, "expr[0-9]+")) {
			_expr_nm = substr(_instr, RSTART, RLENGTH)
			if (!(_expr_nm in _B_local_expr_gather_set)) {
				_B_local_expr_gather_arr[++_B_local_expr_gather_len] = _expr_nm
				_B_local_expr_gather_set[_expr_nm] = _B_local_expr_gather_len
			}
		}
	}
}
function local_expr_define(    _stack_base_reg, _i, _expr_nm, _expr, _n) {

	if (!_B_local_expr_define_bp_neg_rx) {
		_stack_base_reg = db_ccv_get_stack_base()
		if (!_stack_base_reg) {
			out_err("no base pointer reg found")
			return ""
		}
		# bp negative offsets assumed to be local variables
		_B_local_expr_define_bp_neg_rx = (_stack_base_reg "-")
	}

	if (_B_local_expr_define_len) {
		_B_local_expr_define_len = 0
		_B_local_expr_define_arr[""]
		delete _B_local_expr_define_arr
		_B_local_expr_define_map[""]
		delete _B_local_expr_define_map
	}

	for (_i = 1; _i <= _B_local_expr_gather_len; ++_i) {
		_expr_nm = _B_local_expr_gather_arr[_i]
		_expr = handle_expr_with_err(_expr_nm)

		if (match(_expr, _B_local_expr_define_bp_neg_rx)) {
			_expr_nm = _B_local_expr_define_map[_expr_nm] = ("local" ++_n)
			_B_local_expr_define_arr[++_B_local_expr_define_len] = _expr_nm
			out(sprintf("#define %s (%s)", _expr_nm, _expr))
		}
	}

	return _B_local_expr_define_len
}
function local_expr_undefine(    _i) {
	for (_i = 1; _i <= _B_local_expr_define_len; ++_i)
		out(sprintf("#undef %s", _B_local_expr_define_arr[_i]))
}
# </local-expr>

# <emit-bb>
function emit_bb_info(bb,    _prev, _next, _str) {
	_str = sprintf("// basic block %s;", bb)
	if (!(_prev = ca_cfg_get_prev_str(bb)))
		_prev = "n/a"
	_str = sprintf("%s prev %s;", _str, _prev)

	if (!(_next = ca_cfg_get_next_str(bb)))
		_next = "n/a"
	_str = sprintf("%s next %s", _str, _next)

	out(_str)
}
function emit_bb(bb,    _i, _end, _jmp_tbl_target) {

	if (_jmp_tbl_target = jmp_tbl_get_target_lbl(bb))
		instr_to_c(ir_label(_jmp_tbl_target))

	_end = ca_bb_get_end(bb)
	for (_i = ca_bb_get_start(bb); _i <= _end; ++_i)
		instr_to_c(fncb_instr_get(_i), _i)
}
# </emit-bb>

# <jmp-tbl>
function JMP_TBL_LOW() {return 4}

function jmp_tbl_lbls_init() {
	_B_jmp_tbl_target_lbls[""]
	delete _B_jmp_tbl_target_lbls
}
function jmp_tbl_make_lbl(bb, case) {return sprintf("_bb%d_case_%s", bb, case)}
function jmp_tbl_save_target_lbl(bb, lbl) {_B_jmp_tbl_target_lbls[bb] = lbl}
function jmp_tbl_get_target_lbl(bb) {
	return (bb in _B_jmp_tbl_target_lbls) ? _B_jmp_tbl_target_lbls[bb] : ""
}
function jmp_tbl_trace_single_case(bb_start, bb,    _so_far, _arr, _len, _i,
_ret, _prev) {

	if (bb <= 1)
		return 0

	# go backwards from the tbl exit until you get all no prev blocks
	_ret = bb
	if (bb != bb_start && ca_cfg_has_prev(bb)) {
		_len = ca_cfg_get_prev(bb, _arr)
		for (_i = 1; _i <= _len; ++_i) {
			_prev = _arr[_i]
			if (!(_prev in _so_far)) {
				_so_far[_prev]
				_ret = jmp_tbl_trace_single_case(bb_start, _prev, _so_far)
			}
		}
	}
	return _ret
}
function jmp_tbl_trace_cases(arr_out, bb_start, bb_after_tbl, bb_tbl_exit,
    _arr, _len, _i, _end, _bb, _case) {
	delete arr_out
	_end = ca_cfg_get_prev(bb_tbl_exit, _arr)
	for (_i = 1; _i <= _end; ++_i) {
		if ((_bb = _arr[_i]) != bb_after_tbl) {
			if ((_case = jmp_tbl_trace_single_case(bb_start, _bb)))
				arr_out[++_len] = _case
		}
	}
	return _len
}
function jmp_tbl_get_targets_rest(arr_out, bb_start, bb_after_tbl,    _prev,
_arr, _len) {
	_prev = bb_after_tbl-1
	if (ca_bb_is_ujump(_prev)) {
		ca_cfg_get_next(_prev, _arr)
		_len = jmp_tbl_trace_cases(arr_out, bb_start, bb_after_tbl, _arr[1])
	} else {
		out_err("couldn't find exit for jmp tbl")
	}
	return _len
}
function jmp_tbl_get_var_and_limit(bb, arr_quad_out,    _arr, _len, _i, _n,
_var, _const) {
	_var = _const = 0
	_len = instr_split(fncb_instr_get(ca_bb_get_end(bb)-1), _arr)
	for (_i = 1; _i <= _len; ++_i) {
		_n = _arr[_i]
		if (ir_is_type_mem(_n)) {
			arr_quad_out[1] = _n
		} else if (ir_is_type_expr(_n)) {
			arr_quad_out[2] = _n
			arr_quad_out[3] = _arr[_i+1]
			_var = 1
		} else if (ir_is_type_reg(_n)) {
			arr_quad_out[1] = _n
			arr_quad_out[2] = _arr[_i+1]
			_var = 1
		} else if (ir_is_type_const(_n)) {
			arr_quad_out[4] = hex2dec(_arr[_i+1])
			if (">=" == _arr[3])
				--arr_quad_out[4]
			_const = 1
		}
	}
	return (_var && _const)
}
function jmp_tbl_generate(bb_start, bb_jmpr, switch_var, switch_var_tmp,
bb_cases_arr, len, bb_after_tbl,    _i, _case_bb, _n) {

	emit_bb_info(bb_start)
	emit_bb(bb_start)
	out_nl()
	emit_bb_info(bb_jmpr)
	out_expr(sprintf("%s %s = %s", U64(), switch_var_tmp, switch_var))
	emit_bb(bb_jmpr)
	out_nl()

	out(sprintf("switch (%s)", switch_var_tmp))
	out("{")
	out_inc_tab()
	for (_i = 1; _i <= len; ++_i) {
		_n = _i-1
		_case_bb = bb_cases_arr[_i]
		jmp_tbl_save_target_lbl(_case_bb, jmp_tbl_make_lbl(_case_bb, _n))
		out(sprintf("case %d: goto %s;", _n, jmp_tbl_get_target_lbl(_case_bb)))
	}
	jmp_tbl_save_target_lbl(bb_after_tbl, \
		jmp_tbl_make_lbl(bb_after_tbl, "default"))
	out(sprintf("default: goto %s;", jmp_tbl_get_target_lbl(bb_after_tbl)))
	out_dec_tab()
	out("}")
	out_nl()

	return bb_jmpr+1
}
function jmp_tbl_get_switch_var_name() {
	return ("switch_var" ++_B_jmp_tbl_switch_var_num)
}
function jmp_tbl_process(bb,    _bb_jmpr, _case_0, _case_last, _after_tbl,
_limit_dec, _next_bb, _switch_var, _arr_quad, _arr, _len) {

	if (!ca_bb_has(bb+JMP_TBL_LOW()))
		return bb

	_next_bb = bb
	_bb_jmpr = bb+1
	if (ca_bb_is_ujump_reg(_bb_jmpr) && ca_bb_is_ccjump(bb)) {

		_case_0 = bb+2
		if (!ca_cfg_has_next(_case_0)) {
			out_err("unhandled jmp table")
			return bb
		}

		ca_cfg_get_next(bb, _arr)
		_after_tbl = _arr[2]

		_len = jmp_tbl_get_targets_rest(_arr, _case_0, _after_tbl)
		_case_last = _arr[_len]

		if (_case_last > _case_0) {
			if (!jmp_tbl_get_var_and_limit(bb, _arr_quad)) {
				out_err("couldn't find var and limit for jmp table")
				return bb
			}

			if (ir_is_type_mem(_arr_quad[1]) && ir_is_type_expr(_arr_quad[2])) {
				_switch_var = deref(\
					sprintf("((%s*)(%s))", \
						ir_type_to_c_cast_with_err(_arr_quad[1], "jmp tbl"),
						handle_expr_with_err(_arr_quad[3], "jmp tbl")))
			} else if (ir_is_type_reg(_arr_quad[1])) {
				_switch_var = deref(_arr_quad[2])
			} else {
				out_err("unsupported var type for jmp tbl")
			}

 			_limit_dec = _arr_quad[4]
			if (_limit_dec != (_case_last - _case_0)) {
				out_err("jmp table limit and number of cases don't match")
				return bb
			}

			_next_bb = jmp_tbl_generate(bb, _bb_jmpr, _switch_var,
				jmp_tbl_get_switch_var_name(), _arr, _len, _after_tbl)
		}
	}

	return _next_bb
}
# </jmp-tbl>

# <fn>
function fns_rename(    _arr, _len, _i, _name) {
	_len = code_get_fn_names(_arr)
	for (_i = 1; _i <= _len; ++_i) {
		_name = _arr[_i]
		if (sc_fn_has(_name))
			fn_rename(_name, sc_fn_new_name(_name))
	}
}
function fns_declare(    _arr, _len, _i) {
	_len = code_get_fn_names(_arr)
	for (_i = 1; _i <= _len; ++_i)
		fn_dcl(_arr[_i])
}
function fns_define(    _arr_nm, _nm_len, _arr_code, _code_len, _i, _name) {
	_nm_len = code_get_fn_names(_arr_nm)
	for (_i = 1; _i <= _nm_len; ++_i) {
		_name = _arr_nm[_i]
		_code_len = code_get_fn_code(_name, _arr_code)
		fncb_init(_name, _arr_code, _code_len)
		fn_to_c()
	}
}
function fn_rename(from, to) {
	if (code_has_fn(to))
		fn_rename(to, sc_fn_new_name(to))
	code_rename_fn(from, to)
}
function fn_dcl(name) {
	out(sprintf("void %s(void);", name))
}
function fn_open(name) {
	out(sprintf("void %s(void)", name))
	out("{")
}
function fn_close() {out("}")}
function fn_begin() {
	ca_init()
	jmp_tbl_lbls_init()
	local_expr_init()

	fn_open(fncb_fn_name())
	local_expr_define()
	out_nl()
	out_inc_tab()
}
function fn_next_bb(curr_bb) {
	curr_bb = jmp_tbl_process(curr_bb)
	emit_bb_info(curr_bb)
	emit_bb(curr_bb)
	out_nl()
	return curr_bb
}
function fn_end() {
	out_dec_tab()
	local_expr_undefine()
	fn_close()
	out_nl()
}
function fn_to_c(    _bb, _end) {
	fn_begin()
	_end = ca_bb_get_count()
	for (_bb = 1; _bb <= _end; ++_bb)
		_bb = fn_next_bb(_bb)
	fn_end()
}
# </fn>

# <adhoc>
function adhoc_sym_has_sym(sym) {return (sym in _B_adhoc_sym_addr_tbl)}
function adhoc_sym_get_addr(sym) {return _B_adhoc_sym_addr_tbl[sym]}
function adhoc_sym_has_addr(addr) {return (addr in _B_adhoc_addr_sym_tbl)}
function adhoc_sym_get_sym(addr) {return _B_adhoc_addr_sym_tbl[addr]}
function adhoc_sym_place(sym, addr) {
	_B_adhoc_sym_addr_tbl[sym] = addr
	_B_adhoc_addr_sym_tbl[addr] = sym
}
function adhoc(    _i, _len, _arr, _n, _what) {
	_len = adhoc_len()
	for (_i = 1; _i <= _len; ++_i) {
		_n = split(adhoc_get(_i), _arr, " ")
		_what = _arr[1]
		if (3 == _n && "sym" == _what) {
			adhoc_sym_place(_arr[2], _arr[3])
		} else {
			out_err(sprintf("unhandled adhoc - '%s'", adhoc_get(_i)))
		}
	}
}
# </adhoc>

# <section>
function section_addr_to_name(addr, arr_pair, instr,    _has_name) {
	_has_name = section_by_addr(addr, arr_pair)
	if (!_has_name)
		out_err_instr("could not retrieve section name", instr)
	return _has_name
}
function c_str_from_section(name, hex_offs, sect_name_rx, min_len,    _ch, _i,
_arr, _len, _data, _n, _ret) {
	if (!_B_c_str_from_section_init) {
		ascii_init()
		_B_c_str_from_section_init = 1
	}

	if (sect_name_rx && !match(name, sect_name_rx))
		return ""

	if (!min_len)
		min_len = 3

	_n = 0
	_ret = ""

	_data = data_get(name)
	gsub("..", "& ", _data)
	_len = split(_data, _arr, " ")

	# awk arrays are 1 based, section offsets are not
	for (_i = hex2dec(hex_offs)+1; _i <= _len; ++_i) {

		_num = hex2dec(_arr[_i])
		if (_num > 127)
			return ""

		++_n
		_ch = ascii_num2ch(_num)
		if ("\\0" == _ch)
			break

		_ret = (_ret _ch)
	}

	return (_n >= min_len) ? _ret : ""
}
function section_name_to_c_id(name,    _c_id) {
	if (!(name in _B_section_name_to_id_tbl)) {
		_c_id = name
		gsub("\\.", "_", _c_id)
		sub("^_", "s_", _c_id)
		_B_section_name_to_id_tbl[name] = _c_id
	}
	return _B_section_name_to_id_tbl[name]
}
function section_dcl(name, size, data) {
	out_str(sprintf("static %s %s_[%s]", BYTE(), name, size))

	if (data) {
		gsub("..", "0x&,", data)
		out_raw(sprintf(" = {%s}", data))
	}

	out_raw(";\n")
}
# </section>

# <entry>
function x64_ir_to_c() {
	fns_rename()
	out_otag("fn-dcl")
	fns_declare()
	out_ctag("fn-dcl")
	out_nl()
	out_otag("fn-defn")
	fns_define()
	out_ctag("fn-defn")
}

function to_c() {
	sc_emit_typedefs()
	out_nl()
	sc_emit_registers()
	out_nl()
	sc_emit_stack()
	out_nl()
	sc_emit_sections()
	out_nl()
	adhoc()
	x64_ir_to_c()
	out_nl()
	sc_emit_init()
	sc_emit_main()
	flush_all_output()
}
# </entry>
# </x64-ir2c>
# <x64-static-c>
function BYTE() {return "byte"}
function U64() {return "u64"}
function U32() {return "u32"}
function U16() {return "u16"}
function U8() {return "u8"}
function I64() {return "i64"}
function I32() {return "i32"}
function I16() {return "i16"}
function I8() {return "i8"}
function STACK_SZ() {return "0x800000"}

function FPUSH_U64()      {return "push_u64"}
function FPOP_U64()       {return "pop_u64"}
function FINIT()          {return "init"}
function FINIT_REGS()     {return "init_regs"}
function FINIT_STACK()    {return "init_stack"}
function FINIT_SECTIONS() {return "init_sections"}
function FMAIN()          {return "main"}

function deref(op) {return sprintf("*%s", op)}

function sc_fn_has(name) {
	if (!("" in _BC_sc_function_names)) {
		_BC_sc_function_names[""]
		_BC_sc_function_names[FPUSH_U64()]
		_BC_sc_function_names[FPOP_U64()]
		_BC_sc_function_names[FINIT()]
		_BC_sc_function_names[FINIT_REGS()]
		_BC_sc_function_names[FINIT_STACK()]
		_BC_sc_function_names[FINIT_SECTIONS()]
		_BC_sc_function_names[FMAIN()]
	}
	return (name && (name in _BC_sc_function_names))
}

function sc_fn_new_name(name) {return (name "_")}

function sc_emit_typedefs() {
	out_otag("typedefs")
	out(sprintf("typedef uint64_t %s;", U64()))
	out(sprintf("typedef uint32_t %s;", U32()))
	out(sprintf("typedef uint16_t %s;", U16()))
	out(sprintf("typedef uint8_t %s;", U8()))
	out(sprintf("typedef %s %s;", U8(), BYTE()))
	out(sprintf("typedef int64_t %s;", I64()))
	out(sprintf("typedef int32_t %s;", I32()))
	out(sprintf("typedef int16_t %s;", I16()))
	out(sprintf("typedef int8_t %s;", I8()))
	out_ctag("typedefs")
}
function sc_emit_registers() {
	out_otag("registers")
	out("static u64 * rax;")
	out("static u64 * eax;")
	out("static u16 * ax;")
	out("static u8 * ah;")
	out("static u8 * al;")
	out_nl()
	out("static u64 * rbx;")
	out("static u64 * ebx;")
	out("static u16 * bx;")
	out("static u8 * bh;")
	out("static u8 * bl;")
	out_nl()
	out("static u64 * rcx;")
	out("static u64 * ecx;")
	out("static u16 * cx;")
	out("static u8 * ch;")
	out("static u8 * cl;")
	out_nl()
	out("static u64 * rdx;")
	out("static u64 * edx;")
	out("static u16 * dx;")
	out("static u8 * dh;")
	out("static u8 * dl;")
	out_nl()
	out("static u64 * rsi;")
	out("static u64 * esi;")
	out("static u16 * si;")
	out("static u8 * sil;")
	out_nl()
	out("static u64 * rdi;")
	out("static u64 * edi;")
	out("static u16 * di;")
	out("static u8 * dil;")
	out_nl()
	out("static u64 * rbp;")
	out("static u64 * ebp;")
	out("static u16 * bp;")
	out("static u8 * bpl;")
	out_nl()
	out("static u64 * rsp;")
	out("static u64 * esp;")
	out("static u16 * sp;")
	out("static u8 * spl;")
	out_nl()
	out("static u64 * r8;")
	out("static u64 * r8d;")
	out("static u16 * r8w;")
	out("static u8 * r8b;")
	out_nl()
	out("static u64 * r9;")
	out("static u64 * r9d;")
	out("static u16 * r9w;")
	out("static u8 * r9b;")
	out_nl()
	out("static u64 * r10;")
	out("static u64 * r10d;")
	out("static u16 * r10w;")
	out("static u8 * r10b;")
	out_nl()
	out("static u64 * r11;")
	out("static u64 * r11d;")
	out("static u16 * r11w;")
	out("static u8 * r11b;")
	out_nl()
	out("static u64 * r12;")
	out("static u64 * r12d;")
	out("static u16 * r12w;")
	out("static u8 * r12b;")
	out_nl()
	out("static u64 * r13;")
	out("static u64 * r13d;")
	out("static u16 * r13w;")
	out("static u8 * r13b;")
	out_nl()
	out("static u64 * r14;")
	out("static u64 * r14d;")
	out("static u16 * r14w;")
	out("static u8 * r14b;")
	out_nl()
	out("static u64 * r15;")
	out("static u64 * r15d;")
	out("static u16 * r15w;")
	out("static u8 * r15b;")
	out_nl()
	out(sprintf("static void %s(void)", FINIT_REGS()))
	out("{")
	out_inc_tab()
	out("static struct {")
	out_inc_tab()
	out("u64 aling;")
	out("byte r0[8];")
	out("byte r1[8];")
	out("byte r2[8];")
	out("byte r3[8];")
	out("byte r4[8];")
	out("byte r5[8];")
	out("byte r6[8];")
	out("byte r7[8];")
	out("byte r8[8];")
	out("byte r9[8];")
	out("byte r10[8];")
	out("byte r11[8];")
	out("byte r12[8];")
	out("byte r13[8];")
	out("byte r14[8];")
	out("byte r15[8];")
	out_dec_tab()
	out("} regs;")
	out_nl()
	out("rax = (u64*)&(regs.r0[0]);")
	out("eax = (u64*)&(regs.r0[0]);")
	out("ax = (u16*)&(regs.r0[0]);")
	out("ah = (u8*)&(regs.r0[1]);")
	out("al = (u8*)&(regs.r0[0]);")
	out_nl()
	out("rbx = (u64*)&(regs.r1[0]);")
	out("ebx = (u64*)&(regs.r1[0]);")
	out("bx = (u16*)&(regs.r1[0]);")
	out("bh = (u8*)&(regs.r1[1]);")
	out("bl = (u8*)&(regs.r1[0]);")
	out_nl()
	out("rcx = (u64*)&(regs.r2[0]);")
	out("ecx = (u64*)&(regs.r2[0]);")
	out("cx = (u16*)&(regs.r2[0]);")
	out("ch = (u8*)&(regs.r2[1]);")
	out("cl = (u8*)&(regs.r2[0]);")
	out_nl()
	out("rdx = (u64*)&(regs.r3[0]);")
	out("edx = (u64*)&(regs.r3[0]);")
	out("dx = (u16*)&(regs.r3[0]);")
	out("dh = (u8*)&(regs.r3[1]);")
	out("dl = (u8*)&(regs.r3[0]);")
	out_nl()
	out("rsi = (u64*)&(regs.r4[0]);")
	out("esi = (u64*)&(regs.r4[0]);")
	out("si = (u16*)&(regs.r4[0]);")
	out("sil = (u8*)&(regs.r4[0]);")
	out_nl()
	out("rdi = (u64*)&(regs.r5[0]);")
	out("edi = (u64*)&(regs.r5[0]);")
	out("di = (u16*)&(regs.r5[0]);")
	out("dil = (u8*)&(regs.r5[0]);")
	out_nl()
	out("rbp = (u64*)&(regs.r6[0]);")
	out("ebp = (u64*)&(regs.r6[0]);")
	out("bp = (u16*)&(regs.r6[0]);")
	out("bpl = (u8*)&(regs.r6[0]);")
	out_nl()
	out("rsp = (u64*)&(regs.r7[0]);")
	out("esp = (u64*)&(regs.r7[0]);")
	out("sp = (u16*)&(regs.r7[0]);")
	out("spl = (u8*)&(regs.r7[0]);")
	out_nl()
	out("r8 = (u64*)&(regs.r8[0]);")
	out("r8d = (u64*)&(regs.r8[0]);")
	out("r8w = (u16*)&(regs.r8[0]);")
	out("r8b = (u8*)&(regs.r8[0]);")
	out_nl()
	out("r9 = (u64*)&(regs.r9[0]);")
	out("r9d = (u64*)&(regs.r9[0]);")
	out("r9w = (u16*)&(regs.r9[0]);")
	out("r9b = (u8*)&(regs.r9[0]);")
	out_nl()
	out("r10 = (u64*)&(regs.r10[0]);")
	out("r10d = (u64*)&(regs.r10[0]);")
	out("r10w = (u16*)&(regs.r10[0]);")
	out("r10b = (u8*)&(regs.r10[0]);")
	out_nl()
	out("r11 = (u64*)&(regs.r11[0]);")
	out("r11d = (u64*)&(regs.r11[0]);")
	out("r11w = (u16*)&(regs.r11[0]);")
	out("r11b = (u8*)&(regs.r11[0]);")
	out_nl()
	out("r12 = (u64*)&(regs.r12[0]);")
	out("r12d = (u64*)&(regs.r12[0]);")
	out("r12w = (u16*)&(regs.r12[0]);")
	out("r12b = (u8*)&(regs.r12[0]);")
	out_nl()
	out("r13 = (u64*)&(regs.r13[0]);")
	out("r13d = (u64*)&(regs.r13[0]);")
	out("r13w = (u16*)&(regs.r13[0]);")
	out("r13b = (u8*)&(regs.r13[0]);")
	out_nl()
	out("r14 = (u64*)&(regs.r14[0]);")
	out("r14d = (u64*)&(regs.r14[0]);")
	out("r14w = (u16*)&(regs.r14[0]);")
	out("r14b = (u8*)&(regs.r14[0]);")
	out_nl()
	out("r15 = (u64*)&(regs.r15[0]);")
	out("r15d = (u64*)&(regs.r15[0]);")
	out("r15w = (u16*)&(regs.r15[0]);")
	out("r15b = (u8*)&(regs.r15[0]);")
	out_dec_tab()
	out("}")
	out_ctag("registers")
}
function sc_emit_stack() {
	out_otag("stack")
	out(sprintf("static void %s(void)", FINIT_STACK()))
	out("{")
	out_inc_tab()
	out(sprintf("static %s stack[%s];", U64(), STACK_SZ()))
	out_expr(sprintf("%s = (%s)&(stack[%s-1])", deref("rsp"), U64(), \
		STACK_SZ()))
	out_expr(sprintf("%s = %s", deref("rbp"), deref("rsp")))
	out_dec_tab()
	out("}")
	out(sprintf("static inline void %s(%s v)", FPUSH_U64(), U64()))
	out("{")
	out_inc_tab()
	out_expr("*rsp -= 8")
	out_expr("*((u64*)*rsp) = v")
	out_dec_tab()
	out("}")
	out(sprintf("static inline %s %s(void)", U64(), FPOP_U64()))
	out("{")
	out_inc_tab()
	out_expr("u64 ret = *((u64*)*rsp)")
	out_expr("*rsp += 8")
	out_expr("return ret")
	out_dec_tab()
	out("}")
	out_ctag("stack")
}
function sc_emit_init() {
	out_otag("init")
	out(sprintf("static void %s(void)", FINIT()))
	out("{")
	out_inc_tab()
	out_expr(sprintf("%s()", FINIT_REGS()))
	out_expr(sprintf("%s()", FINIT_STACK()))
	out_expr(sprintf("%s()", FINIT_SECTIONS()))
	out_dec_tab()
	out("}")
	out_ctag("init")
}
function get_ret_reg_with_err(ctype_str,    _len, _arr, _i, _ret_sz, _ret_reg,
_rtype) {
	_rtype = ctype_str
	_ret_reg = ""
	_ret_sz = db_ctype_get_size_of_type_str(_rtype)

	if (!_ret_sz) {
		out_err(sprintf("no size found for return type '%s'", _rtype))
		return ""
	}

	_len = db_ccv_get_iret_regs(_arr)
	for (_i = 1; _i <= _len; ++_i) {
		if (db_reg_get_size(_arr[_i]) == _ret_sz) {
			_ret_reg = _arr[_i]
			break
		}
	}

	if (!_ret_reg) {
		out_err(sprintf("no return registers found for type '%s'", _rtype))
		return ""
	}

	return _ret_reg
}
function get_arg_reg_with_err(ctype_str, arg_num,    _i, _arg_sz,
_arg_reg, _arg_type, _reg) {
	_arg_type = ctype_str
	_arg_reg = ""
	_arg_sz = db_ctype_get_size_of_type_str(_arg_type)

	if (!_B_get_arg_reg_with_err_len) {
		_B_get_arg_reg_with_err_len = \
			db_ccv_get_all_int_pass_reg(_B_get_arg_reg_with_err_arr)
	}

	if (!_arg_sz) {
		out_err(sprintf("no size found for arg type '%s'", _arg_type))
		return ""
	}

	for (_i = 1; _i <= _B_get_arg_reg_with_err_len; ++_i) {
		_reg = _B_get_arg_reg_with_err_arr[_i]
		if (db_ccv_get_int_arg_num(_reg) == arg_num \
			&& db_reg_get_size(_reg) == _arg_sz) {
			_arg_reg = _reg
			break
		}
	}

	if (!_arg_reg) {
		out_err(sprintf("no arg registers found for type '%s'", _arg_type))
		return ""
	}

	return _arg_reg
}

function sc_emit_sections(    _arr, _i, _end, _name, _size, _data) {
	out_otag("sections")
	_end = section_get_names(_arr)

	for (_i = 1; _i <= _end; ++_i)
		out(sprintf("static byte * %s;", section_name_to_c_id(_arr[_i])))

	out_nl()
	out(sprintf("static void %s(void)", FINIT_SECTIONS()))
	out("{")
	out_inc_tab()
	for (_i = 1; _i <= _end; ++_i) {
		_name = _arr[_i]
		_size = section_get_size(_name)
		_data = data_get(_name)

		if (!match(_size, "^0x"))
			_size = ("0x" _size)

		_name = section_name_to_c_id(_name)
		section_dcl(_name, _size, _data)
	}
	out_nl()
	for (_i = 1; _i <= _end; ++_i) {
		_name = section_name_to_c_id(_arr[_i])
		out(sprintf("%s = %s_;", _name, _name))
	}

	out_dec_tab()
	out("}")
	out_ctag("sections")
}

function sc_emit_main(    _ret_reg, _arg_reg) {
	out_otag("main")
	out(sprintf("int %s(int argc, char * argv[])", FMAIN()))
	out("{")
	out_inc_tab()
	out_expr("init()")

	_arg_reg = get_arg_reg_with_err("int", 1)
	if (_arg_reg) {
		out_expr(sprintf("%s = argc", deref(_arg_reg)))
	}

	_arg_reg = get_arg_reg_with_err("char*", 2)
	if (_arg_reg) {
		out_expr(sprintf("%s = (u64)argv", deref(_arg_reg)))
	}

	out_expr(sprintf("%s_()", FMAIN()))

	if (_ret_reg = get_ret_reg_with_err("int"))
		out_expr(sprintf("return %s", deref(_ret_reg)))

	out_dec_tab()
	out("}")
	out_ctag("main")
}
# </x64-static-c>
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
# function code buffer
# Allows for sharing code between components without having to pass an array

# <fncb>
# <public>
function fncb_init(name, arr_code, len,    _i) {
	_fncb_init_static()
	_BC_fncb_fn_name = name
	for (_i = 1; _i <= len; ++_i)
		_BC_fncb_code[++_BC_fncb_code_len] = arr_code[_i]
}
function fncb_fn_name() {return _BC_fncb_fn_name}
function fncb_code_size() {return _BC_fncb_code_len}
function fncb_instr_get(n) {return _BC_fncb_code[n]}
function fncb_instr_set(n, str) {_BC_fncb_code[n] = str}
# </public>
# <private>
function _fncb_init_static() {
	_BC_fncb_fn_name = ""
	_BC_fncb_code[""]
	delete _BC_fncb_code
	_BC_fncb_code_len = 0
}
# </private>
# </fncb>
# <hex-dec>
function hex2dec(hex,    _i, _len, _ret) {
	hex = tolower(hex)
	gsub("^0x|h$", "", hex)

	_ret = "NOT-A-NUMBER"
	if (match(hex, "^[[:xdigit:]]+$")) {
		_ret = 0
		_len = length(hex)
		for (_i = 1; _i <= _len; ++_i)
			_ret = _ret * 16 + index("123456789abcdef", substr(hex, _i, 1))
	}
	return _ret
}
function dec2hex(dec) {return sprintf("0x%x", dec)}
# </hex-dec>
# <ir>
function IR_REG8() {return "reg8"}
function IR_REG16() {return "reg16"}
function IR_REG32() {return "reg32"}
function IR_REG64() {return "reg64"}

function IR_MEM8() {return "mem8"}
function IR_MEM16() {return "mem16"}
function IR_MEM32() {return "mem32"}
function IR_MEM64() {return "mem64"}

function IR_CONST() {return "const"}

function ir_is_type_mem(type) {return match(type, "^mem")}
function ir_is_type_reg(type) {return match(type, "^reg")}
function ir_is_type_const(type) {return (IR_CONST() == type)}
function ir_is_type_expr(type) {return (IR_EXPR() == type)}
function ir_get_op_size_bits(op,    _ret) {
	if (match(op, "^(reg|mem)[[:digit:]]+")) {
		match(op, "[[:digit:]]+")
		_ret = substr(op, RSTART, RLENGTH)
	}
	return (_ret+0)
}
function ir_get_op_size_bytes(op) {return ir_get_op_size_bits(op)/8}

function IR_COND() {return "cond"}
function ir_make_cond(instr) {return (IR_COND() " " instr)}

function IR_PUSH() {return "push"}
function IR_POP() {return "pop"}
function IR_LOAD() {return "load"}
function IR_STORE() {return "store"}

function ir_op(instr, op) {return (instr " " op)}
function ir_op_op(instr, a, b) {return (instr " " a " " b)}

function IR_PCREL() {return "pcrel"}
function IR_ASSIGN() {return "assign"}
function ir_assign_pcrel(a, b) {
	return (ir_op_op(IR_ASSIGN(), a, b) " " IR_PCREL())
}

function IR_ADD() {return "add"}
function IR_SUB() {return "sub"}
function IR_MUL() {return "mul"}
function IR_DIV() {return "div"}
function IR_AND() {return "and"}
function IR_OR() {return "or"}
function IR_XOR() {return "xor"}
function IR_SHL() {return "shl"}
function IR_SHR() {return "shr"}
function IR_SHRA() {return "shra"}

function IR_CAST() {return "cast"}

function ir_is_instr_alu(instr) {
	if (!("" in _CB_is_ir_instr_alu_tbl)) {
		_CB_is_ir_instr_alu_tbl[""]
		_CB_is_ir_instr_alu_tbl[IR_ADD()]
		_CB_is_ir_instr_alu_tbl[IR_SUB()]
		_CB_is_ir_instr_alu_tbl[IR_MUL()]
		_CB_is_ir_instr_alu_tbl[IR_DIV()]
		_CB_is_ir_instr_alu_tbl[IR_AND()]
		_CB_is_ir_instr_alu_tbl[IR_OR()]
		_CB_is_ir_instr_alu_tbl[IR_XOR()]
		_CB_is_ir_instr_alu_tbl[IR_SHL()]
		_CB_is_ir_instr_alu_tbl[IR_SHR()]
		_CB_is_ir_instr_alu_tbl[IR_SHRA()]
	}
	return (instr in _CB_is_ir_instr_alu_tbl)
}

function IR_JUMP() {return "jump"}
function IR_JUMP_REG() {return "jump_reg"}
function IR_CALL() {return "call"}
function IR_CALL_REG() {return "call_reg"}
function IR_RETURN() {return "return"}
function IR_NOP() {return "nop"}

function IR_SIGNED() {return "signed"}
function IR_UNSIGNED() {return "unsigned"}
function IR_NOSIGN() {return "nosign"}
function IR_COMPAR() {return "compar"}
function ir_compar(sign, how, a, b) {
	return ir_op_op(IR_COMPAR(), (sign " " (how " " a)), b)
}
function ir_jump_cond(where) {return ir_op(ir_make_cond(IR_JUMP()), where)}

function IR_FN() {return "function"}
function IR_LBL() {return "label"}
function IR_EXPR() {return "expr"}

function ir_fn(name) {return (IR_FN() " " name)}
function ir_label(name) {return (IR_LBL() " " name)}
function ir_expr_next_id(expr) {
	if (!(expr in _BC_ir_expr_id_tbl))
		_BC_ir_expr_id_tbl[expr] = ("expr" ++_BC_ir_expr_id)
	return _BC_ir_expr_id_tbl[expr]
}
function ir_expr_make(num_flds, expr, id) {
	return (IR_EXPR() " " id " "  num_flds " " expr)
}
function ir_emit(ir) {print ir}

function IR_ERROR() {return "error"}
# </ir>
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
# <ascii-tbl-ch-num>
function ascii_init(    _i, _ch) {

	for (_i = 0; _i <= 127; ++_i) {

		_ch = sprintf("%c", _i)

		if (0 == _i)  {_ch = "\\0"}          # 0x00
		else if (7 == _i)  { _ch = "\\a"}    # 0x07
		else if (8 == _i)  { _ch = "\\b"}    # 0x08
		else if (9 == _i)  { _ch = "\\t"}    # 0x09
		else if (10 == _i)  { _ch = "\\n"}   # 0x0A
		else if (11 == _i)  { _ch = "\\v"}   # 0x0B
		else if (12 == _i)  { _ch = "\\f"}   # 0x0C
		else if (13 == _i)  { _ch = "\\r"}   # 0x0D
		else if (27 == _i)  { _ch = "\\e"}   # 0x1B
		else if (127 == _i) { _ch = "(del)"} # 0x7F

		_CB_ascii_ch_to_num[_ch] = _i
		_CB_ascii_num_to_ch[_i] = _ch
	}
}
function ascii_ch2num(ch) {
	return (ch in _CB_ascii_ch_to_num) ? _CB_ascii_ch_to_num[ch] : 0
}
function ascii_num2ch(num) {
	return (num in _CB_ascii_num_to_ch) ? _CB_ascii_num_to_ch[num] : ""
}
# </ascii-tbl-ch-num>
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
# <ca-entry-point>
function ca_init(opt) {

	if (!ca_du_instr_init())
		out_err(ca_du_instr_get_err())

	ca_bb_init(opt)
	ca_cfg_init()
}
# </ca-entry-point>
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
