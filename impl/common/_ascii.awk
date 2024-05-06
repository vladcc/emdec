# <ascii-tbl-ch-num>
function ascii_init(    _i, _ch) {

	for (_i = 0; _i <= 127; ++_i) {

		_ch = sprintf("%c", _i)

		if (0 == _i)  {_ch = "\\0"}          # 0x00
		else if (7 == _i)  { _ch = "\\a"}    # 0x07
		else if (8 == _i)  { _ch = "\\b"}    # 0x08
		else if (9 == _i)  { _ch = "\\t"}    # 0x09
		else if (10 == _i)  { _ch = "\\n"}   # 0x0A
		else if (11 == _i)  { _ch = "\\v"}   # 0x0B
		else if (12 == _i)  { _ch = "\\f"}   # 0x0C
		else if (13 == _i)  { _ch = "\\r"}   # 0x0D
		else if (27 == _i)  { _ch = "\\e"}   # 0x1B
		else if (127 == _i) { _ch = "(del)"} # 0x7F

		_CB_ascii_ch_to_num[_ch] = _i
		_CB_ascii_num_to_ch[_i] = _ch
	}
}
function ascii_ch2num(ch) {
	return (ch in _CB_ascii_ch_to_num) ? _CB_ascii_ch_to_num[ch] : 0
}
function ascii_num2ch(num) {
	return (num in _CB_ascii_num_to_ch) ? _CB_ascii_num_to_ch[num] : ""
}
# </ascii-tbl-ch-num>
