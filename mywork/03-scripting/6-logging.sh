#!/bin/bash

# log a warning message
logfile="./logging.log"

# parameters to use for the log message
NOW=`date + '%Y-%m-%d-%H:%M:%S'`
STATUS="Warning"
MSG="This is a warning message in the log file"

# append to the log file
echo $NOW - $STATUS - $MSG >> logging.log
