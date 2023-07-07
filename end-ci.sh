#!/bin/bash
CI="$1"

ncu-ci url $CI 2>&1 | awk '/Result .*/ { exit $2 == "PENDING" }';
