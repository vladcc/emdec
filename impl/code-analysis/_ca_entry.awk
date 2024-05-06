# <ca-entry-point>
function ca_init(opt) {

	if (!ca_du_instr_init())
		out_err(ca_du_instr_get_err())

	ca_bb_init(opt)
	ca_cfg_init()
}
# </ca-entry-point>
