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
MEM_THRESHOLD=100
message="SYSTEM IS RUNNING WITH HIGH MEMORY UTILIZATION with $MEM_USAGE MB"

    if [ "$MEM_USAGE" -gt "$MEM_THRESHOLD" ]; then
    echo -e "$R $message: $MEM_USAGE $N MB"
    fi
    sh mail.sh srinualajangi99@gmail.com "High Memory Usage" "$message" "DEVOPS TEAM" "High Memory usage"