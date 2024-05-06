# <hex-reader>
# Expected input:
# <title-start-at>
# <offest-field> <hex-values-field> <hex-values-field>* <ascii-field>
#
# E.g.
# Contents of section .dynsym:
# 0418 00000000 00000000 48000000 12000000  ........H.......

function hexr_section_start_rx(str) {_CB_hexr_section_start_rx = str}
function _hexr_get_section_start_rx() {return _CB_hexr_section_start_rx}

function hexr_name_from_section_start_rx(str) {
	_CB_hexr_name_from_section_start_rx = str
}
function _hexr_get_name_from_section_start_rx() {
	return _CB_hexr_name_from_section_start_rx
}

function _HEXR_ST_LOOK_FOR_SECTION() {return 1}
function _HEXR_ST_GET_FIRST_LINE() {return 2}
function _HEXR_ST_GET_NEXT_LINE() {return 3}
function _hexr_set_state(st) {_CB_hexr_read_state = st}
function _hexr_get_state() {return _CB_hexr_read_state}

function hexr_get_error() {return _CB_hexr_err}
function _hexr_set_error(str) {_CB_hexr_err = ("hex-reader: " str)}

function _HEXR_SUBSEP() {return SUBSEP}
function _HEXR_START() {return "start"}
function _HEXR_HEX() {return "hex"}
function _HEXR_ALL() {return "all"}
function _hexr_section_init(start_at) {
	if (!match(start_at, _hexr_get_name_from_section_start_rx())) {
		_hexr_set_error(sprintf("no name in section title '%s'", start_at))
		return 0
	}
	_CB_hexr_section_name = substr(start_at, RSTART, RLENGTH)
	sub(":", "", _CB_hexr_section_name)

	if (!(_CB_hexr_section_name in _CB_hexr_section_map)) {
		_CB_hexr_section_map[_CB_hexr_section_name]
		_CB_hexr_section_map[_HEXR_ALL()] = \
			_hexr_subsep_cat(_CB_hexr_section_map[_HEXR_ALL()], \
				_CB_hexr_section_name)
	}
	return 1
}
function _hexr_fld_cat(arr, start, end,    _str) {
	while (start <= end)
		_str = (_str arr[start++])
	return _str
}
function _hexr_get_hex(arr, len) {return _hexr_fld_cat(arr, 2, len)}
function _hexr_subsep_cat(a, b) {
	if (a && !b) return a
	if (b && !a) return b
	return (a _HEXR_SUBSEP() b)
}
function _hexr_subsep_split(str, arr_out) {
	return split(str, arr_out, _HEXR_SUBSEP())
}
function _hexr_section_set_start(addr,    _tmp) {
	_tmp = _hexr_subsep_cat(_CB_hexr_section_name, _HEXR_START())
	_CB_hexr_section_map[_tmp] = addr
}
function _hexr_section_append_hex(hex) {
	_tmp = _hexr_subsep_cat(_CB_hexr_section_name, _HEXR_HEX())
	_CB_hexr_section_map[_tmp] = (_CB_hexr_section_map[_tmp] hex)
}

function _HEXR_LINE_FMT() {
	return " *<offest-field> <hex-values-field>+  <ascii-field>"
}
function _hexr_check_fields_for_hex(arr, len,    _i) {
	for (_i = 1; _i <= len; ++_i) {
		if (!match(arr[_i], "[[:xdigit:]]+"))
			return 0
	}
	return 1
}

function hexr_section_get_all(arr_out) {
	return _hexr_subsep_split(_CB_hexr_section_map[_HEXR_ALL()], arr_out)
}
function hexr_section_get_start(name,    _tmp) {
	_tmp = _hexr_subsep_cat(name, _HEXR_START())
	return _CB_hexr_section_map[_tmp]
}
function hexr_section_get_hex(name,    _tmp) {
	_tmp = _hexr_subsep_cat(name, _HEXR_HEX())
	return _CB_hexr_section_map[_tmp]
}

function _hexr_get_section_start(line) {
	if (!match(line, "[[:xdigit:]]+ ")) {
		_hexr_set_error(sprintf("start address expected in line '%s'", line))
		return ""
	}
	return substr(line, RSTART, RLENGTH-1)
}
function _hexr_get_hex_part(line,    _tmp) {
	_tmp = line
	# remove address from the front
	sub("^[[:space:]]*[[:xdigit:]]+ ", "", _tmp)
	# remove ascii part from the back
	sub("[[:space:]]{2}.*$", "", _tmp)
	# remove spaces
	gsub("[[:space:]]+", "", _tmp)

	if (!match(_tmp, "^[[:xdigit:]]+$")) {
		_hexr_set_error(sprintf("line '%s' not in format '%s'",\
			line, _HEXR_LINE_FMT()))
		return ""
	}

	return _tmp
}

function hexr_read(line,    _st, _tmp) {

	_st = _hexr_get_state()

	if (!_st) {
		_hexr_set_state(_HEXR_ST_LOOK_FOR_SECTION())
		_st = _hexr_get_state()
	}

	if (_HEXR_ST_LOOK_FOR_SECTION() == _st) {

		if (match(line, _hexr_get_section_start_rx())) {

			if (!_hexr_section_init(line))
				return 0

			_hexr_set_state(_HEXR_ST_GET_FIRST_LINE())
		}

	} else if (_HEXR_ST_GET_FIRST_LINE() == _st) {

		if (match(line, _hexr_get_section_start_rx())) {
			_hexr_set_state(_HEXR_ST_LOOK_FOR_SECTION())
			return hexr_read(line)
		}


		if (!(_tmp = _hexr_get_section_start(line)))
			return 0

		_hexr_section_set_start(_tmp)

		if (!(_tmp = _hexr_get_hex_part(line)))
			return 0

		_hexr_section_append_hex(_tmp)
		_hexr_set_state(_HEXR_ST_GET_NEXT_LINE())

	} else if (_HEXR_ST_GET_NEXT_LINE() == _st) {

		if (match(line, _hexr_get_section_start_rx())) {
			_hexr_set_state(_HEXR_ST_LOOK_FOR_SECTION())
			return hexr_read(line)
		}

		if (!(_tmp = _hexr_get_hex_part(line)))
			return 0

		_hexr_section_append_hex(_tmp)
		_hexr_set_state(_HEXR_ST_GET_NEXT_LINE())
	}

	return 1
}
# </hex-reader>
