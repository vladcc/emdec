# <x64-asm-to-ir>
function HEX_CONST_RX() {return "(0x)?[[:xdigit:]]+"}
function HEX_CONST_EXACT_RX() {return "^(0x)?[[:xdigit:]]+$"}
function RIP_REL_RX() {return "\\[rip\\+0x[[:xdigit:]]+\\]"}

# <registers>
function gpreg_get_sz(name) {
	if (!("" in _B_gpreg_sz)) {
		_B_gpreg_sz[""]
		_B_gpreg_sz["rax"] = IR_REG64(); _B_gpreg_sz["eax"] = IR_REG32()
		_B_gpreg_sz["ax"]  = IR_REG16(); _B_gpreg_sz["al"]  = IR_REG8()
		_B_gpreg_sz["rbx"] = IR_REG64(); _B_gpreg_sz["ebx"] = IR_REG32()
		_B_gpreg_sz["bx"]  = IR_REG16(); _B_gpreg_sz["bl"]  = IR_REG8()
		_B_gpreg_sz["rcx"] = IR_REG64(); _B_gpreg_sz["ecx"] = IR_REG32()
		_B_gpreg_sz["cx"]  = IR_REG16(); _B_gpreg_sz["cl"]  = IR_REG8()
		_B_gpreg_sz["rdx"] = IR_REG64(); _B_gpreg_sz["edx"] = IR_REG32()
		_B_gpreg_sz["dx"]  = IR_REG16(); _B_gpreg_sz["dl"]  = IR_REG8()
		_B_gpreg_sz["rsi"] = IR_REG64(); _B_gpreg_sz["esi"] = IR_REG32()
		_B_gpreg_sz["si"]  = IR_REG16(); _B_gpreg_sz["sil"] = IR_REG8()
		_B_gpreg_sz["rdi"] = IR_REG64(); _B_gpreg_sz["edi"] = IR_REG32()
		_B_gpreg_sz["di"]  = IR_REG16(); _B_gpreg_sz["dil"] = IR_REG8()
		_B_gpreg_sz["rbp"] = IR_REG64(); _B_gpreg_sz["ebp"] = IR_REG32()
		_B_gpreg_sz["bp"]  = IR_REG16(); _B_gpreg_sz["bpl"] = IR_REG8()
		_B_gpreg_sz["rsp"] = IR_REG64(); _B_gpreg_sz["esp"] = IR_REG32()
		_B_gpreg_sz["sp"]  = IR_REG16(); _B_gpreg_sz["spl"] = IR_REG8()
		_B_gpreg_sz["r8"]  = IR_REG64(); _B_gpreg_sz["r8d"] = IR_REG32()
		_B_gpreg_sz["r8w"] = IR_REG16(); _B_gpreg_sz["r8b"] = IR_REG8()
		_B_gpreg_sz["r9"]  = IR_REG64(); _B_gpreg_sz["r9d"] = IR_REG32()
		_B_gpreg_sz["r9w"] = IR_REG16(); _B_gpreg_sz["r9b"] = IR_REG8()
		_B_gpreg_sz["r10"] = IR_REG64(); _B_gpreg_sz["r10d"] = IR_REG32()
		_B_gpreg_sz["r10w"] = IR_REG16(); _B_gpreg_sz["r10b"] = IR_REG8()
		_B_gpreg_sz["r11"]  = IR_REG64(); _B_gpreg_sz["r11d"] = IR_REG32()
		_B_gpreg_sz["r11w"] = IR_REG16(); _B_gpreg_sz["r11b"] = IR_REG8()
		_B_gpreg_sz["r12"]  = IR_REG64(); _B_gpreg_sz["r12d"] = IR_REG32()
		_B_gpreg_sz["r12w"] = IR_REG16(); _B_gpreg_sz["r12b"] = IR_REG8()
		_B_gpreg_sz["r13"]  = IR_REG64(); _B_gpreg_sz["r13d"] = IR_REG32()
		_B_gpreg_sz["r13w"] = IR_REG16(); _B_gpreg_sz["r13b"] = IR_REG8()
		_B_gpreg_sz["r14"]  = IR_REG64(); _B_gpreg_sz["r14d"] = IR_REG32()
		_B_gpreg_sz["r14w"] = IR_REG16(); _B_gpreg_sz["r14b"] = IR_REG8()
		_B_gpreg_sz["r15"]  = IR_REG64(); _B_gpreg_sz["r15d"] = IR_REG32()
		_B_gpreg_sz["r15w"] = IR_REG16(); _B_gpreg_sz["r15b"] = IR_REG8()
	}
	return (name in _B_gpreg_sz) ? _B_gpreg_sz[name] : 0
}
# </registers>

# <preprocess>
function preprocess_lines(    _i, _end, _line, _next, _rip, _const, _res) {

	_end = fncb_code_size()
	for (_i = 1; _i <= _end; ++_i) {
		_line = fncb_instr_get(_i)

		# make separable by a single space
		sub(" PTR ", "_PTR", _line)
		gsub(",|[[:space:]]+", " ", _line)

		# resolve rip relative addressing
		if (match(_line, RIP_REL_RX())) {

			# rip points to the next instr
			_next = fncb_instr_get(_i+1)
			_rip = substr(_next, 1, index(_next, ";")-1)
			_rip = ("0x" _rip)
			match(_line, (HEX_CONST_RX() "\\]"))
			_const = substr(_line, RSTART, RLENGTH-1)
			_res = dec2hex(hex2dec(_rip) + hex2dec(_const))
			sub(RIP_REL_RX(), _res, _line)
			_line = (_line " " IR_PCREL())
		}

		fncb_instr_set(_i, _line)
	}
}

function rl_map_addr_to_line_no(    _i, _end, _addr, _instr) {
	_B_rl_map_addr_to_line_no[""]
	delete _B_rl_map_addr_to_line_no

	_end = fncb_code_size()
	for (_i = 1; _i <= _end; ++_i) {
		_instr = fncb_instr_get(_i)
		_addr = substr(_instr, 1, index(_instr, ";")-1)
		_B_rl_map_addr_to_line_no[_addr] = _i
	}
}
function rl_get_line_no(addr) {return _B_rl_map_addr_to_line_no[addr]}
function rl_handle_jmp(num, dest,    _line) {
	# direct jump
	if (match(dest, HEX_CONST_RX())) {
		_line = fncb_instr_get(num)
		sub((" " HEX_CONST_RX()), \
			(" " lbl_get_name(rl_get_line_no(dest))), _line)
		# remove objdump jump comment
		sub("<[^[:space:]]+$", "", _line)
		fncb_instr_set(num, _line)
	}
}
function rl_handle_call(num, dest, fn_name) {
	# direct call and function name is present
	if (fn_name && match(dest, HEX_CONST_RX())) {
		_line = fncb_instr_get(num)
		sub((" " HEX_CONST_RX()), (" " fn_name), _line)

		# remove the now repeating function name
		sub(" [^[:space:]]+$", "", _line)
		fncb_instr_set(num, _line)
	}
}
function rl_do_adhoc_std_syms(instr_line,    _line, _addr, _sym) {
	if (match(instr_line, "# [[:xdigit:]]+ std[[:alpha:]]+")) {
		# adhoc: # <addr> std(err|out)
		_line = substr(instr_line, RSTART, RLENGTH)

		match(_line, "[[:xdigit:]]+")
		_addr = dec2hex(hex2dec(substr(_line, RSTART, RLENGTH)))

		match(_line, "std[[:alpha:]]+")
		_sym = substr(_line, RSTART, RLENGTH)

		adhoc_save(sprintf("sym %s %s", _sym, _addr))
	}
}
function rl_gen_code_with_lbls(    _i, _end, _arr, _len) {
	_end = fncb_code_size()
	for (_i = 1; _i <= _end; ++_i) {
		if (lbl_has(_i))
			_arr[++_len] = ir_label(lbl_get(_i))
		_arr[++_len] = fncb_instr_get(_i)
		# remove addresses; not needed anymore
		sub("^[[:xdigit:]]+;", "", _arr[_len])
	}

	# replace original code with code with labels
	fncb_init(fncb_fn_name(), _arr, _len)
}
function resolve_lbls_and_calls(    _i, _end, _instr_ln, _instr, _arr) {
	lbl_init()
	rl_map_addr_to_line_no()

	_end = fncb_code_size()
	for (_i = 1; _i <= _end; ++_i) {
		_instr_ln = fncb_instr_get(_i)
		split(_instr_ln, _arr, ";| ")
		_instr = _arr[2]

		if (i2ir_is_instr_jmp(_instr)) rl_handle_jmp(_i, _arr[3])
		else if ("call" == _instr)     rl_handle_call(_i, _arr[3], _arr[4])
		else                           rl_do_adhoc_std_syms(_instr_ln)
	}

	rl_gen_code_with_lbls()
}
# </preprocess>

# <adhoc>
function adhoc_emit(    _n) {
	for (_n in _B_x64_to_ir_adhoc_save_tbl)
		ir_emit("adhoc|" _n)
}
function adhoc_save(str) {
	if (!(str in _B_x64_to_ir_adhoc_save_tbl))
		_B_x64_to_ir_adhoc_save_tbl[str]
}
# </adhoc>

# <mem-type>
function get_mem_type(ptr_type,    _type) {
	if (match(ptr_type, "^QWORD"))      _type = IR_MEM64()
	else if (match(ptr_type, "^DWORD")) _type = IR_MEM32()
	else if (match(ptr_type, "^WORD"))  _type = IR_MEM16()
	else if (match(ptr_type, "^BYTE"))  _type = IR_MEM8()
	return _type
}
# </mem-type>

# <expr>
function expr_save(id, expr) {
	if (!(id in _B_expr_save_tbl)) {
		_B_expr_save_tbl[id] = expr
		_B_expr_save_order[++_B_expr_save_order_len] = id
	}
}
function expr_emit(    _i, _id) {
	for (_i = 1; _i <= _B_expr_save_order_len; ++_i) {
		_id = _B_expr_save_order[_i]
		ir_emit("expr|" _id " " _B_expr_save_tbl[_id])
	}
}
function resolve_expr(expr,    _arr, _len, _i, _flds, _id, _expr) {
	_expr = expr
	# remove [] *1 and +0x0
	gsub("\\[|(\\*1|\\+0x0)?\\]", "", _expr)
	# put spaces around operators
	gsub("\\+|\\*|-", " & ", _expr)
	# remove the *_PTR part
	sub("^.*_PTR", "", _expr)

	_len = split(_expr, _arr, " ")

	# form the expression
	_expr = ""
	_flds = 0
	for (_i = 1; _i <= _len; ++_i) {
		if (_i % 2) {
			_expr = (_expr type_op(_arr[_i]))
			_flds += 2
		} else {
			_expr = (_expr _arr[_i])
			++_flds
		}
		if (_i < _len)
			_expr = (_expr " ")
	}

	# get an expression name
	_id = ir_expr_next_id(_expr)

	# save the expressions and their ids to emit later for reference
	expr_save(_id, (_flds " " _expr))

	# return an expression op
	return (IR_EXPR() " " _id)
}
# <expr>

# <op-type>
function operand_type(op,    _type, _sz) {
	if (match(op, HEX_CONST_EXACT_RX())) _type = IR_CONST()
	else if ((_sz = gpreg_get_sz(op)))   _type = _sz
	else if (match(op, "_PTR"))          _type = get_mem_type(op)
	return _type
}

function type_op(op,    _type) {
	_type = operand_type(op)
	if (ir_is_type_mem(_type)) {
		sub("^(((Q|D)?WORD)|BYTE)_PTR$", "", op)
		op = resolve_expr(op)
	}

	if (IR_CONST() == _type && !match(op, "^0x"))
		op = ("0x" op)

	return sprintf("%s %s", _type, op)
}

function is_expr(op) {return match(op, "^\\[")}
# </op-type>

# <instr>
function x64_arith_to_ir(op) {
	if (!("" in _B_x64_airth_to_ir_tbl)) {
		_B_x64_airth_to_ir_tbl[""]
		_B_x64_airth_to_ir_tbl["add"] = IR_ADD()
		_B_x64_airth_to_ir_tbl["sub"] = IR_SUB()
		_B_x64_airth_to_ir_tbl["and"] = IR_AND()
		_B_x64_airth_to_ir_tbl["or"] = IR_OR()
		_B_x64_airth_to_ir_tbl["xor"] = IR_XOR()
		_B_x64_airth_to_ir_tbl["shl"] = IR_SHL()
		_B_x64_airth_to_ir_tbl["shr"] = IR_SHR()
		_B_x64_airth_to_ir_tbl["sal"] = IR_SHL()
		_B_x64_airth_to_ir_tbl["sar"] = IR_SHRA()
	}
	return (op in _B_x64_airth_to_ir_tbl) ? _B_x64_airth_to_ir_tbl[op] : ""
}
function cc_cmp_rel_op(cc) {
	if (!("" in _B_cc_cmp_rel_op)) {
		_B_cc_cmp_rel_op[""]
		_B_cc_cmp_rel_op["ne"]  = "!="
		_B_cc_cmp_rel_op["nz"]  = "!="
		_B_cc_cmp_rel_op["b"]   = "<"
		_B_cc_cmp_rel_op["c"]   = "<"
		_B_cc_cmp_rel_op["l"]   = "<"
		_B_cc_cmp_rel_op["nae"] = "<"
		_B_cc_cmp_rel_op["nge"] = "<"
		_B_cc_cmp_rel_op["be"]  = "<="
		_B_cc_cmp_rel_op["le"]  = "<="
		_B_cc_cmp_rel_op["na"]  = "<="
		_B_cc_cmp_rel_op["ng"]  = "<="
		_B_cc_cmp_rel_op["e"]   = "=="
		_B_cc_cmp_rel_op["z"]   = "=="
		_B_cc_cmp_rel_op["a"]   = ">"
		_B_cc_cmp_rel_op["g"]   = ">"
		_B_cc_cmp_rel_op["nbe"] = ">"
		_B_cc_cmp_rel_op["nle"] = ">"
		_B_cc_cmp_rel_op["ae"]  = ">="
		_B_cc_cmp_rel_op["ge"]  = ">="
		_B_cc_cmp_rel_op["nb"]  = ">="
		_B_cc_cmp_rel_op["nc"]  = ">="
		_B_cc_cmp_rel_op["nl"]  = ">="
	}
	return (cc in _B_cc_cmp_rel_op) ? _B_cc_cmp_rel_op[cc] : ""
}
function cc_cmp_sign(cc) {
	if (!("" in _B_cc_cmp_sign)) {
		_B_cc_cmp_sign[""]
		_B_cc_cmp_sign["nl"]  = IR_SIGNED()
		_B_cc_cmp_sign["nle"] = IR_SIGNED()
		_B_cc_cmp_sign["ng"]  = IR_SIGNED()
		_B_cc_cmp_sign["nge"] = IR_SIGNED()
		_B_cc_cmp_sign["l"]   = IR_SIGNED()
		_B_cc_cmp_sign["le"]  = IR_SIGNED()
		_B_cc_cmp_sign["g"]   = IR_SIGNED()
		_B_cc_cmp_sign["ge"]  = IR_SIGNED()
		_B_cc_cmp_sign["nb"]  = IR_UNSIGNED()
		_B_cc_cmp_sign["nbe"] = IR_UNSIGNED()
		_B_cc_cmp_sign["na"]  = IR_UNSIGNED()
		_B_cc_cmp_sign["nae"] = IR_UNSIGNED()
		_B_cc_cmp_sign["b"]   = IR_UNSIGNED()
		_B_cc_cmp_sign["be"]  = IR_UNSIGNED()
		_B_cc_cmp_sign["a"]   = IR_UNSIGNED()
		_B_cc_cmp_sign["ae"]  = IR_UNSIGNED()
		_B_cc_cmp_sign["nc"]  = IR_UNSIGNED()
		_B_cc_cmp_sign["c"]   = IR_UNSIGNED()
	}
	return (cc in _B_cc_cmp_sign) ? _B_cc_cmp_sign[cc] : ""
}
function is_instr_cc(instr) {return match(instr, "^(j[^m]|cmov|set)")}
function is_instr_cmov(instr) {return match(instr, "^cmov")}
function is_instr_setcc(instr) {return match(instr, "^set")}
function get_instr_cc(instr) {
	return (is_instr_cc(instr)) ? substr(instr, RLENGTH) : ""
}

function cmp_get_sign(instr,    _sign) {
	_sign = cc_cmp_sign(get_instr_cc(instr))
	if (!_sign)
		_sign = IR_NOSIGN()
	return _sign
}
function cmp_get_how(instr) {return cc_cmp_rel_op(get_instr_cc(instr))}

function make_err(msg, instr) {
	return sprintf("%s %s - '%s'", IR_ERROR(), msg, instr)
}

function find_next_non_lbl(start,    _i, _end) {
	_end = fncb_code_size()
	for (_i = start; _i <= _end && match(fncb_instr_get(_i), IR_LBL()); ++_i)
		continue
	return (!match(fncb_instr_get(_i), IR_LBL())) ? _i : 0
}
function find_prev_non_lbl(start,    _i) {
	for (_i = start; _i >= 1 && match(fncb_instr_get(_i), IR_LBL()); --_i)
		continue
	return (!match(fncb_instr_get(_i), IR_LBL())) ? _i : 0
}
# </instr>

# <code>
function CODE() {return "code|"}
function code_emit(code) {ir_emit((CODE() code))}
function code_error_emit(code) {ir_emit(CODE() code)}
# </code>

# <instr-to-ir>
function i2ir_is_ln_ignore(line) {
	return match(line, "endbr64| ?nop ?|xchg e?ax e?ax")
}
function i2ir_is_ln_noflags(line) {
	# incomplete
	return match(line, " ?mov ")
}
function i2ir_is_ln_flags(line) {
	# incomplete
	return match(line, "^(cmp|test|sub) ")
}
function i2ir_is_instr_jmp(instr) {return match(instr, "^j")}
function i2ir_is_instr_cjmp(instr) {return match(instr, "^j[^m]")}
function i2ir_is_instr_alu(instr) {
	return match(instr, "^(add|sub|and|or|xor|shl|shr|sal|sar)$")
}
function i2ir_alu(instr, op1, op2,    _ir_op) {
	if (_ir_op = x64_arith_to_ir(instr))
		code_emit(ir_op_op(_ir_op, op1, op2))
	else
		code_error_emit(make_err("unrecognized alu instr", instr))
}
function i2ir_cjump_find_prev(num,    _line, _ret) {
	--num
	if ((num > 1) && (num = find_prev_non_lbl(num))) {
		_line = fncb_instr_get(num)
		if (i2ir_is_ln_flags(_line))
			_ret = num
		else
			_ret = i2ir_cjump_find_prev(num)
	}
	return _ret
}
function i2ir_cjump(num, op,    _prev, _nprev) {
	if (_nprev = i2ir_cjump_find_prev(num)) {
		_prev = fncb_instr_get(_nprev)
		if (match(_prev, "^(cmp|test) ")) {
			code_emit(ir_jump_cond(op))
		} else if (match(_prev, "^sub ")) {
			# the sub instr has already been processed; turn it into a cmp
			sub("sub", "cmp", _prev)
			sub(" [^[:space:]]+$", " 0x0", _prev)
			fncb_instr_set(_nprev, _prev)
			# process the 'new' cmp instr
			i2ir(_nprev, _nprev)
			# emit the cjmp ir
			code_emit(ir_jump_cond(op))
		} else {
			code_error_emit(make_err(\
				"conditional jump preceded by unexpected instruction", \
					fncb_instr_get(num)))
		}
	} else {
		code_error_emit(make_err("no instruction found before jump", \
			fncb_instr_get(num)))
	}
}
function i2ir_return() {code_emit(IR_RETURN())}
function i2ir_enter(    _bp, _sp) {
	_bp = type_op("rbp")
	_sp = type_op("rsp")
	code_emit(ir_op(IR_PUSH(), _bp))
	code_emit(ir_op_op(IR_ASSIGN(), _bp, _sp))
}
function i2ir_leave(    _sp, _bp) {
	_sp = type_op("rsp")
	_bp = type_op("rbp")
	code_emit(ir_op_op(IR_ASSIGN(), _sp, _bp))
	code_emit(ir_op(IR_POP(), _bp))
}
function i2ir_push(op) {code_emit(ir_op(IR_PUSH(), op))}
function i2ir_pop(op) {code_emit(ir_op(IR_POP(), op))}
function i2ir_mov(op1, op2) {
	if (ir_is_type_reg(op1)) {
		if (ir_is_type_mem(op2))
			code_emit(ir_op_op(IR_LOAD(), op1, op2))
		else
			code_emit(ir_op_op(IR_ASSIGN(), op1, op2))
	} else if (ir_is_type_mem(op1)) {
		code_emit(ir_op_op(IR_STORE(), op1, op2))
	}
}
function i2ir_movsxd(num, op1, op2,    _type1, _type2, _arr) {
	if (ir_is_type_reg(op1) && ir_is_type_reg(op2)) {
		split(op1, _arr, " ")
		_type1 = _arr[1]
		op1 = _arr[2]

		split(op2, _arr, " ")
		_type2 = _arr[1]
		op2 = _arr[2]

		code_emit(sprintf("%s %s %s %s %s %s", \
			IR_CAST(), IR_SIGNED(), _type1, op1, _type2, op2))
	} else {
		code_error_emit(make_err("unhandled cast", fncb_instr_get(num)))
	}
}
function i2ir_lea(num, op1, op2) {
	if (match(fncb_instr_get(num), IR_PCREL()))
		code_emit(ir_assign_pcrel(op1, op2))
	else
		code_emit(ir_op_op(IR_ASSIGN(), op1, op2))
}
function i2ir_jmp(op) {
	if (gpreg_get_sz(op))
		code_emit(ir_op(IR_JUMP_REG(), op))
	else
		code_emit(ir_op(IR_JUMP(), op))
}
function i2ir_cmp_find_next_cjmp(num,    _line, _ret) {
	# search handles instr reordering; e.g. mov between cmp and cjmp
	++num
	if ((num <= fncb_code_size()) && (num = find_next_non_lbl(num))) {
		_line = fncb_instr_get(num)
		if (!i2ir_is_instr_cjmp(_line) && i2ir_is_ln_noflags(_line))
			_ret = i2ir_cmp_find_next_cjmp(num)
		else
			_ret = _line
	}
	return _ret
}
function i2ir_cmp(num, op1, op2,    _cjmp_ln, _cjmp_instr, _relop) {
	# skip labels in case a cc jmp is a target of another jmp
	if (_cjmp_ln = i2ir_cmp_find_next_cjmp(num)) {
		_cjmp_instr = substr(_cjmp_ln, 1, index(_cjmp_ln, " ")-1)
		if (i2ir_is_instr_cjmp(_cjmp_instr)) {
			if (_relop = cmp_get_how(_cjmp_instr)) {
				code_emit(ir_compar(cmp_get_sign(_cjmp_instr), _relop, op1, \
					op2))
			} else {
				code_error_emit(make_err("no relop for conditional jump", \
					_cjmp_ln))
			}
		} else {
			code_error_emit(make_err("instruction after cmp not a cjump", \
				fncb_instr_get(num)))
		}
	} else {
		code_error_emit(make_err("no cjmp found after cmp", \
			fncb_instr_get(num)))
	}
}
function i2ir_test(num, op1, op2,    _cjmp_ln, _cjmp_instr, _relop, _line) {
	_line = fncb_instr_get(num)

	# only treat 'test X X' for now
	if (op1 == op2) {
		# skip labels in case a cc jmp is a target of another jmp
		if (_cjmp_ln = i2ir_cmp_find_next_cjmp(num)) {
			_cjmp_instr = substr(_cjmp_ln, 1, index(_cjmp_ln, " ")-1)
			if (_relop = cmp_get_how(_cjmp_instr)) {
				if ("==" == _relop || "!=" == _relop) {
					# turn 'text X X' into 'cmp X 0x0'
					sub("test", "cmp", _line)
					match(_line, "[^[:space:]]+$")
					sub((substr(_line, RSTART, RLENGTH) "$"), "0x0", _line)
					fncb_instr_set(num, _line)
					# process recursively only this line
					i2ir(num, num)
				} else {
					make_err("unhandled conditional jump after test", _cjmp_ln)
				}
			} else {
				code_error_emit(make_err("no relop for conditional jump", \
					_cjmp_ln))
			}
		} else {
			code_error_emit(make_err("no cjmp found after test", _line))
		}
	} else {
		code_error_emit(make_err("unhandled test instruction", _line))
	}
}
function i2ir_call(op1) {
	if (ir_is_type_reg(op1))
		code_emit(ir_op(IR_CALL_REG(), op1))
	else
		code_emit(ir_op(IR_CALL(), op1))
}
function i2ir_cdqe() {
	code_emit(sprintf("%s %s %s rax %s eax", \
		IR_CAST(), IR_SIGNED(), IR_REG64(), IR_REG32()))
}
function i2ir_lbl(num) {code_emit(fncb_instr_get(num))}
function i2ir_unknown(num) {
	code_error_emit(make_err("unknown instruction", fncb_instr_get(num)))
}
function i2ir_line_instr_ops(num, arr_out,    _line, _instr, _len, _op1, _op2) {
	_line = fncb_instr_get(num)
	_len = split(_line, arr_out, " ")
	_instr = arr_out[1]

	if (!match(_instr, "^(call|j)")) {
		if (_len > 1)
			_op1 = type_op(arr_out[2])
		if (_len > 2) {
			_op2 = arr_out[3]
			_op2 = (is_expr(_op2)) ? resolve_expr(_op2) : type_op(_op2)
		}
	} else {
		_op1 = arr_out[2]
	}

	delete arr_out
	arr_out[1] = _instr
	arr_out[2] = _op1
	arr_out[3] = _op2

	return _line
}
function i2ir(opt_end, opt_start,    _i, _line, _instr, _arr, _op1, _op2) {

	if (!opt_start)
		opt_start = 1

	if (!opt_end)
		opt_end = fncb_code_size()

	for (_i = opt_start; _i <= opt_end; ++_i) {
		_line = i2ir_line_instr_ops(_i, _arr)
		_instr = _arr[1]
		_op1 = _arr[2]
		_op2 = _arr[3]

		if (i2ir_is_ln_ignore(_line))        continue
		else if (i2ir_is_instr_alu(_instr))  i2ir_alu(_instr, _op1, _op2)
		else if (i2ir_is_instr_cjmp(_instr)) i2ir_cjump(_i, _op1)
		else if ("ret"    == _instr)  i2ir_return()
		else if ("enter"  == _instr)  i2ir_enter()
		else if ("leave"  == _instr)  i2ir_leave()
		else if ("push"   == _instr)  i2ir_push(_op1)
		else if ("pop"    == _instr)  i2ir_pop(_op1)
		else if ("mov"    == _instr)  i2ir_mov(_op1, _op2)
		else if ("movsxd" == _instr)  i2ir_movsxd(_i, _op1, _op2)
		else if ("lea"    == _instr)  i2ir_lea(_i, _op1, _op2)
		else if ("jmp"    == _instr)  i2ir_jmp(_op1)
		else if ("cmp"    == _instr)  i2ir_cmp(_i, _op1, _op2)
		else if ("test"   == _instr)  i2ir_test(_i, _op1, _op2)
		else if ("call"   == _instr)  i2ir_call(_op1)
		else if ("cdqe"   == _instr)  i2ir_cdqe()
		else if (IR_LBL() == _instr)  i2ir_lbl(_i)
		else                          i2ir_unknown(_i)
	}
}
# </instr-to-ir>

# <to-ir-entry>
function fn_to_ir(name, arr_code, len) {

	fncb_init(name, arr_code, len)
	preprocess_lines()

	# in is <addr>;<instr>[;comment]
	resolve_lbls_and_calls()
	# out is <instr>

	code_emit(ir_fn(fncb_fn_name()))
	i2ir()
}

function x64_to_ir(    _arr_fn_names, _fn_names_len, _i,
_arr_fn_code, _fn_code_len, _name) {

	_fn_names_len = code_get_fn_names(_arr_fn_names)
	for (_i = 1; _i <= _fn_names_len; ++_i) {
		_name = _arr_fn_names[_i]
		_fn_code_len = code_get_fn_code(_name, _arr_fn_code)
		fn_to_ir(_name, _arr_fn_code, _fn_code_len)
	}
	expr_emit()
	adhoc_emit()
}

function to_ir() {
	x64_to_ir()
}
# </to-ir-entry>
# </x64-asm-to-ir>
