#!/usr/bin/awk -f

BEGIN {FS="|"}

"code" == $1 {
	if (match($2, "function"))
		next
	G_code[++G_code_len] = $2
}

function print_arr(arr, len,    _i) {
	for (_i = 1; _i <= len; ++_i)
		printf("%s, ", arr[_i])
}

function process(arr_code, code_len,    _arr, _len) {

	if (!ca_du_instr_init(arr_code, code_len)) {
		print ca_du_instr_get_err()
		exit(1)
	}

	for (_i = 1; _i <= code_len; ++_i) {
		print sprintf("%s %s", _i, arr_code[_i])
		printf("Defs: ")
		if (ca_du_instr_has_def(_i)) {
			_len = ca_du_instr_get_defs(_i, _arr)
			print_arr(_arr, _len)
		}
		print ""
		printf("Uses: ")
		if (ca_du_instr_has_use(_i)) {
			_len = ca_du_instr_get_uses(_i, _arr)
			print_arr(_arr, _len)
		}
		print "\n"
	}

}

END {
	process(G_code, G_code_len)
}
