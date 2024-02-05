#!/bin/bash

MESSAGE=$(git log -1 HEAD --pretty=format:%s)

if [[ "$MESSAGE" == *\[email\]* ]]; then
  echo "do action here"
else
  echo "do nothing"
fi