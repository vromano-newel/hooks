#!/bin/bash

COMMIT_MSG=$(git log -1 HEAD --pretty=format:%s)
REGEX='^\[(CU+-[0-9]+)]([[:blank:]]+[[:alnum:]_'"'"'-]+)+$'

## checking commit-message format
if ! [[ $COMMIT_MSG =~ $REGEX ]];then
    echo -e "Your commit-message format is not valid:\n$COMMIT_MSG\n"
    echo "Valid format examples:"
    echo "[CU-1234567] My commit message"
    exit 1
else
    echo "Well done! Your commit-message is valid."
    exit 0
fi