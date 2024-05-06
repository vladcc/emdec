#!/bin/bash
HERE="$(dirname $(realpath $0))"
"${HERE}"/run-objdump-reader.sh "$@" | "${HERE}"/x64-asm2ir.awk
# | awk '$1 !~ /label|function/ {printf("\t")} {print}'
