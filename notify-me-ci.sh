#!/bin/bash
CI="$1"

command="notify-me './end-ci.sh \"$CI\"' \"Finished CI\""
eval "$command"
