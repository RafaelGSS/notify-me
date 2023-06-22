#!/bin/bash
CI="$1"

command="./notify-me.sh 'ncu-ci url \"$CI\" | awk \"/Result/ {result=\$2} END {exit result != \\\"PENDING\\\"}\"' \"Finished CI\""
eval "$command"
