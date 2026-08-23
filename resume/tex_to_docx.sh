#!/bin/sh

set -eu

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
INPUT_FILE=${1:-"$SCRIPT_DIR/peterh_resume.tex"}
OUTPUT_FILE=${2:-"$SCRIPT_DIR/peterh_resume.docx"}

if ! command -v pandoc >/dev/null 2>&1; then
    printf '%s\n' 'Error: pandoc is required but was not found in PATH.' >&2
    exit 1
fi

pandoc "$INPUT_FILE" -o "$OUTPUT_FILE"
printf 'Generated %s\n' "$OUTPUT_FILE"