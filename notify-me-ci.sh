#!/bin/bash
CI="$1"
MSG="$2"

if [ -z "$2" ]; then
  MSG="Finished CI"
fi

command="notify-me 'end-ci \"$CI\"' \"$MSG\""
eval "$command"
