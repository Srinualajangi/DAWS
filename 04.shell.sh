#!/bin/bash

LOGFILE_DIR=/tmp
DATE=$(date +%F:%H:%M:%S)
SCRIPT_NAME=$0
LOGFILE=$LOGFILE_DIR/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

MEM_USAGE=$(free -m | grep  Mem | awk '{print $3}')
MEM_THRESHOLD=135
message=""

while
do 
    if [$MEM_USAGE -gt $MEM_THRESHOLD ]; then
    message+="SYSTEM IS RUNNING WITH HIGH MEMORY UTILIZATION: $MEM_USAGE MB"
    fi
done 

echo -e "message: $message"