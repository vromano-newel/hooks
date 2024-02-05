#!/bin/bash

INPUT_FILE=$1
COMMIT_MSG=$(head -n1 "$INPUT_FILE")

REGEX_MERGE="^(Merge branch[a-zA-Z0-9!#$%ˆ&*()-=+._ ']+)$"

REGEX='^\[(CU-[a-zA-Z0-9_ ]+)\]+([a-zA-Z0-9!#$%ˆ&*()-=+._ ]+)$'

## checking commit-message merge format
if ! [[ $COMMIT_MSG =~ $REGEX_MERGE ]]; then
  ## checking commit-message format
  if ! [[ $COMMIT_MSG =~ $REGEX ]]; then
     echo -e "Your commit-message format is not valid:\n$COMMIT_MSG\n"
     echo "Valid format examples:"
     echo "[CU-xxx123] My commit message"
     exit 1
  else
     echo "Well done! Your commit-message is valid."
     exit 0
  fi
fi