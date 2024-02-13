#!/bin/bash

# # echo the exit status
date
echo $?

# # or nullify the exit status
date
echo $? > /dev/null

# declare the exit status of the script
date
exit 14
