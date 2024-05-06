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
