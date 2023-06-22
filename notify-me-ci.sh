#!/bin/bash
CI="$1"

command="notify-me 'ncu-ci url \"$CI\" 2>&1 | awk \"/Result/ {result=\$2} END {exit result == \\\"PENDING\\\"}\"' \"Finished CI\""
eval "$command"
