#!/bin/bash
HERE="$(dirname $(realpath $0))"
"${HERE}"/run-x64-asm2ir.sh "$@" | \
"${HERE}"/x64-ir2c.awk
