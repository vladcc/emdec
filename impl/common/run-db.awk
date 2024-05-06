#!/usr/bin/awk -f

function run(    _t, _rx, _len, _arr, _i) {

	if (!db_init("../data/x64-reg.txt", "../data/x64-lin-callconv.txt", \
		"../data/ctypes-lp64.txt", "../data/clib.txt", \
		"../data/includes.txt")) {
		print ("error: " db_error_get())
		exit(1)
	}

	print "call conv:"
	print sprintf("iarg num: %d", db_ccv_get_max_int_reg_args())
	print sprintf("rdi, rsi, r8d, r9d, rax: %d, %d, %d, %d, %d",
		db_ccv_get_int_arg_num("rdi"), db_ccv_get_int_arg_num("rsi"),
		db_ccv_get_int_arg_num("r8d"), db_ccv_get_int_arg_num("r9d"),
		db_ccv_get_int_arg_num("rax"))
	print sprintf("bp: %s", db_ccv_get_stack_base())
	print sprintf("sp: %s", db_ccv_get_stack_top())
	print sprintf("iret rax, eax, rbx: %d, %d, %d",
		db_ccv_is_int_ret_reg("rax"), db_ccv_is_int_ret_reg("eax"),
		db_ccv_is_int_ret_reg("rbx"))

	print sprintf("farg num: %d", db_ccv_get_max_float_reg_args())
	print sprintf("fret xmm[03], foo: %d, %d, %d",
		db_ccv_is_float_ret_reg("xmm0"), db_ccv_is_float_ret_reg("xmm3"),
		db_ccv_is_float_ret_reg("foo"))

	print ""
	print "reg info:"
	print sprintf("is reg: rax, dh, bl, r15, xmm0, foo: %d, %d, %d, %d, %d, %d",
		db_reg_has("rax"), db_reg_has("dh"), db_reg_has("bl"),
		db_reg_has("r15"), db_reg_has("xmm0"), db_reg_has("foo"))

	print sprintf("reg type: rbx, bl, ch, r12, xmm3: %s, %s, %s, %s, %s",
		db_reg_get_type("rbx"), db_reg_get_type("bl"), db_reg_get_type("ch"),
		db_reg_get_type("r12"), db_reg_get_type("xmm3"))

	print sprintf("reg size: rbx, bl, ch, r12, xmm3: %s, %s, %s, %s, %s",
		db_reg_get_size("rbx"), db_reg_get_size("bl"), db_reg_get_size("ch"),
		db_reg_get_size("r12"), db_reg_get_size("xmm3"))

	print ""
	print "ctypes"
	_t = "long double complex z"
	_rx = db_ctype_get_rx_of_type_str(_t)
	print sprintf("%s: %s, %s, %s", _t, _rx, db_ctype_get_type_of_rx(_rx),
		db_ctype_get_size_of_rx(_rx))

	_t = "double complex"
	_rx = db_ctype_get_rx_of_type_str(_t)
	print sprintf("%s: %s, %s, %s", _t, _rx, db_ctype_get_type_of_rx(_rx),
		db_ctype_get_size_of_rx(_rx))

	_t = "float complex"
	_rx = db_ctype_get_rx_of_type_str(_t)
	print sprintf("%s: %s, %s, %s", _t, _rx, db_ctype_get_type_of_rx(_rx),
		db_ctype_get_size_of_rx(_rx))

	_t = "int excepts"
	_rx = db_ctype_get_rx_of_type_str(_t)
	print sprintf("%s: %s, %s, %s", _t, _rx, db_ctype_get_type_of_rx(_rx),
		db_ctype_get_size_of_rx(_rx))

	_t = "fexcept_t* flagp"
	_rx = db_ctype_get_rx_of_type_str(_t)
	print sprintf("%s: %s, %s, %s", _t, _rx, db_ctype_get_type_of_rx(_rx),
		db_ctype_get_size_of_rx(_rx))

	_t = "const unsigned char * foo"
	_rx = db_ctype_get_rx_of_type_str(_t)
	print sprintf("%s: %s, %s, %s", _t, _rx, db_ctype_get_type_of_rx(_rx),
		db_ctype_get_size_of_rx(_rx))

	_t = "intmax_t numer"
	_rx = db_ctype_get_rx_of_type_str(_t)
	print sprintf("%s: %s, %s, %s", _t, _rx, db_ctype_get_type_of_rx(_rx),
		db_ctype_get_size_of_rx(_rx))

	_t = "signed long"
	_rx = db_ctype_get_rx_of_type_str(_t)
	print sprintf("%s: %s, %s, %s", _t, _rx, db_ctype_get_type_of_rx(_rx),
		db_ctype_get_size_of_rx(_rx))

	_t = "unsigned long long"
	_rx = db_ctype_get_rx_of_type_str(_t)
	print sprintf("%s: %s, %s, %s", _t, _rx, db_ctype_get_type_of_rx(_rx),
		db_ctype_get_size_of_rx(_rx))

	_t = "size_t"
	_rx = db_ctype_get_rx_of_type_str(_t)
	print sprintf("%s: %s, %s, %s", _t, _rx, db_ctype_get_type_of_rx(_rx),
		db_ctype_get_size_of_rx(_rx))

	_t = "short"
	_rx = db_ctype_get_rx_of_type_str(_t)
	print sprintf("%s: %s, %s, %s", _t, _rx, db_ctype_get_type_of_rx(_rx),
		db_ctype_get_size_of_rx(_rx))

	_t = "bool"
	_rx = db_ctype_get_rx_of_type_str(_t)
	print sprintf("%s: %s, %s, %s", _t, _rx, db_ctype_get_type_of_rx(_rx),
		db_ctype_get_size_of_rx(_rx))

	_t = "char"
	_rx = db_ctype_get_rx_of_type_str(_t)
	print sprintf("%s: %s, %s, %s", _t, _rx, db_ctype_get_type_of_rx(_rx),
		db_ctype_get_size_of_rx(_rx))

	_t = "double"
	_rx = db_ctype_get_rx_of_type_str(_t)
	print sprintf("%s: %s, %s, %s", _t, _rx, db_ctype_get_type_of_rx(_rx),
		db_ctype_get_size_of_rx(_rx))

	_t = "foo"
	_rx = db_ctype_get_rx_of_type_str(_t)
	print sprintf("%s: %s", _t, _rx)

	print ""
	print "fn-lib:"
	_t = "printf"
	printf sprintf("%s: %s ret: %s params: ", _t,
		db_fn_info_has_fn(_t), db_fn_info_get_ret_type(_t))
	_len = db_fn_info_get_params_arr(_t, _arr)
	for (_i = 1; _i <= _len; ++_i)
		printf("%s, ", _arr[_i])
	print ""

	_t = "sscanf"
	printf sprintf("%s: %s ret: %s params: ", _t,
		db_fn_info_has_fn(_t), db_fn_info_get_ret_type(_t))
	_len = db_fn_info_get_params_arr(_t, _arr)
	for (_i = 1; _i <= _len; ++_i)
		printf("%s, ", _arr[_i])
	print ""

	_t = "malloc"
	printf sprintf("%s: %s ret: %s params: ", _t,
		db_fn_info_has_fn(_t), db_fn_info_get_ret_type(_t))
	_len = db_fn_info_get_params_arr(_t, _arr)
	for (_i = 1; _i <= _len; ++_i)
		printf("%s, ", _arr[_i])
	print ""

	_t = "free"
	printf sprintf("%s: %s ret: %s params: ", _t,
		db_fn_info_has_fn(_t), db_fn_info_get_ret_type(_t))
	_len = db_fn_info_get_params_arr(_t, _arr)
	for (_i = 1; _i <= _len; ++_i)
		printf("%s, ", _arr[_i])
	print ""

	_t = "tmpfile"
	printf sprintf("%s: %s ret: %s params: ", _t,
		db_fn_info_has_fn(_t), db_fn_info_get_ret_type(_t))
	_len = db_fn_info_get_params_arr(_t, _arr)
	for (_i = 1; _i <= _len; ++_i)
		printf("%s, ", _arr[_i])
	print ""

	print ""
	print "includes:"
	_t = "printf"
	print sprintf("%s - %s", _t, db_include_get(_t))
	_t = "malloc"
	print sprintf("%s - %s", _t, db_include_get(_t))
	_t = "assert"
	print sprintf("%s - %s", _t, db_include_get(_t))
}

BEGIN {
	run()
}
