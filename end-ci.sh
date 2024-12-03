#!/bin/bash
CI="$1"

# Check if ncu-ci program exists
if ! command -v ncu-ci &> /dev/null; then
  echo "Error: ncu-ci is not installed or not found in PATH."
  exit 1
fi

ncu-ci url $CI 2>&1 | awk '/Result .*/ { exit $2 == "PENDING" }';
