#!/bin/bash


COMMIT_MSG=$1
#COMMIT_MSG=$(git log -1 HEAD --pretty=format:%s) # last commit

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