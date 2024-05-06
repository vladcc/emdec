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
