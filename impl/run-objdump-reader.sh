#!/bin/bash
readonly WHERE="$(realpath $0)"
readonly NAME="$(basename ${WHERE})"
readonly HERE="$(dirname ${WHERE})"

function main
{
	if [ "$#" -ne 1 ]; then
		echo "Use: ${NAME} <example-dir>" >&2
		exit 1
	fi

	local L_PREF="$1"
	local L_DIR="$L_PREF"

	"${HERE}"/objdump-reader.awk \
		-vObjData="${HERE}"/examples/${L_DIR}/${L_PREF}.hex.txt \
		-vObjCode="${HERE}"/examples/${L_DIR}/${L_PREF}.code.asm \
		-vObjSections="${HERE}"/examples/${L_DIR}/${L_PREF}.sections.txt
}

main "$@"
