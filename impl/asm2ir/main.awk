#!/usr/bin/awk -f

# <main>
# <awk-loop>
BEGIN {
	FS = "\\|"
}

"section" == $1 {section_read($0)}
"data" == $1 {data_read($0)}
"code" == $1 {code_read($2)}

END {
	to_ir()
}
# </awk-loop>

# <common-to-ir>
function section_read(str,    _arr) {
	split(str, _arr, ";")
	_arr[2] = dec2hex(hex2dec(_arr[2]))
	_arr[3] = dec2hex(hex2dec(_arr[3]))
	print sprintf("%s;%s;%s", _arr[1], _arr[2], _arr[3])
}
function data_read(str) {print str}

function lbl_init() {
	delete _B_lbl_table
	_B_lbl_num = 0
}
function lbl_get_name(addr) {
	if (!(addr in _B_lbl_table))
		_B_lbl_table[addr] = ("_lbl" ++_B_lbl_num)
	return _B_lbl_table[addr]
}
function lbl_has(addr) {return (addr in _B_lbl_table)}
function lbl_get(addr) {return _B_lbl_table[addr]}
# </common-to-ir>
# </main>
