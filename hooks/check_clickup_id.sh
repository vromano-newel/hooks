#!/bin/bash

# The below input_file is file ".git/COMMIT_EDITMSG" where commits are stored
INPUT_FILE=$1
# It will copy the commit string from ".git/COMMIT_EDITMSG"
COMMIT_MSG=$(head -n1 "$INPUT_FILE")

#COMMIT_MSG=$(git log -1 HEAD --pretty=format:%s)

REGEX='^\[(CU-[a-zA-Z0-9_ ]+)\]+([a-zA-Z0-9_ ]+)$'

## checking commit-message format
if ! [[ $COMMIT_MSG =~ $REGEX ]];then
   echo -e "Your commit-message format is not valid:\n$COMMIT_MSG\n"
   echo "Valid format examples:"
   echo "[CU-xxx123] My commit message"
   exit 1
else
   echo "Well done! Your commit-message is valid."
   exit 0
fi