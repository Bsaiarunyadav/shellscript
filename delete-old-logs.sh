#!/bin/bash

APP_LOGS_DIR=/home/centos/shellscript/logfiles  
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGSDIR=/home/centos/shellscript/shellscript-logs
LOGSFILE=$LOGSDIR/$0-$DATE.log
FILES_TO_DELTE=$(find $APP_LOGS_DIR -name "*.log" -type f -mtime +14)
echo "$FILES_TO_DELTE"


for line in $@
do 
    echo "deleting $line" &>>LOGSFILE
    rm -rf $line
done <<< $FILES_TO_DELETE
