#!/usr/bin/awk -f

/function/ {G_name = $0; next}
$0 {G_code[++G_code_len] = $0}

function print_rage(arr, start, end) {
	while (start <= end)
		print arr[start++]
}

function process(arr_code, code_len,    _len, _i, _j, _s, _e, _arr, _arr2) {

	_len = ca_bb_init(arr_code, code_len)

	print G_name
	for (_i = 1; _i <= _len; ++_i) {
		_s = ca_bb_get_start(_i)
		_e = ca_bb_get_end(_i)

		print ""
		print _s, _e
		print_rage(arr_code, _s, _e)
	}

	print ""

	ca_cfg_init()
	_len = ca_cfg_get_all(_arr)
	for (_i = 1; _i <= _len; ++_i) {
		_s = _arr[_i]

		printf("%s <- ", _s)
		_e = ca_cfg_get_prev(_s, _arr2)
		for (_j = 1; _j <= _e; ++_j)
			printf("%s, ", _arr2[_j])
		print ""

		printf("%s -> ", _s)
		_e = ca_cfg_get_next(_s, _arr2)
		for (_j = 1; _j <= _e; ++_j)
			printf("%s, ", _arr2[_j])
		print ""
	}
}

END {
	process(G_code, G_code_len)
}
