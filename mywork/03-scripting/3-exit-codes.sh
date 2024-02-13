#!/bin/bash

# evaluate the status from a command
date

# if status code of that command = 0, success, exit
if [ $? -eq 0 ]
then
  echo "Success"
  exit 0
else
  echo "Failure" >&2
  exit 1
fi
