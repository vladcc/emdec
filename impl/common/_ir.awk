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
