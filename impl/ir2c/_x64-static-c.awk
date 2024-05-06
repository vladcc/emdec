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
