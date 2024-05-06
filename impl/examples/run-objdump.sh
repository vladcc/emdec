#!/bin/bash

function main
{
	local L_DIR="$(dirname $1)"
	local L_BIN="$(basename $1)"

	pushd "$L_DIR"
	objdump -M intel -d "$L_BIN" > "${L_BIN}.code.asm"
	objdump -s "$L_BIN" > "${L_BIN}.hex.txt"
	objdump -h "$L_BIN" > "${L_BIN}.sections.txt"
	popd
}

main "$@"
