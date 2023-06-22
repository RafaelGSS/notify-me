#!/bin/bash

COMMAND="$1"
MESSAGE="$2"

while true; do
  RESULT=$(eval "$COMMAND" 2>/dev/null; echo $?)
  if [[ -z "$RESULT" || "$RESULT" == "0" ]]; then
    notify-send "$MESSAGE"
    break
  fi
  sleep 60
done
