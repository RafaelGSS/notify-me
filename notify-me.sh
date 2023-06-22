#!/bin/bash

COMMAND="$1"
MESSAGE="$2"

# 15 minutes
EXPIRE_TIME=900000

while true; do
  RESULT=$(eval "$COMMAND"; echo $?)
  if [[ -z "$RESULT" || "$RESULT" == "0" ]]; then
    notify-send -t $EXPIRE_TIME "$MESSAGE"
    break
  fi
  sleep 60
done
