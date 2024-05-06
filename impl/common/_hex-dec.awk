# <hex-dec>
function hex2dec(hex,    _i, _len, _ret) {
	hex = tolower(hex)
	gsub("^0x|h$", "", hex)

	_ret = "NOT-A-NUMBER"
	if (match(hex, "^[[:xdigit:]]+$")) {
		_ret = 0
		_len = length(hex)
		for (_i = 1; _i <= _len; ++_i)
			_ret = _ret * 16 + index("123456789abcdef", substr(hex, _i, 1))
	}
	return _ret
}
function dec2hex(dec) {return sprintf("0x%x", dec)}
# </hex-dec>
