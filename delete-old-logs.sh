#!/bin/bash
APP_LOGS_DIR=/home/centos/app-logs
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGSDIR=/home/centos/shellscript/shellscript-logs
LOGSFILE=$LOGSDIR/$0-$DATE.log
FILES_TO_DELTE=$(find $APP_LOGS_DIR -name "*.log" -type f -mtime +10)
echo "$FILES_TO_DELTE"

while read line 
do 
    echo "Deleting $line" &>>LOGFILES
    rm -rf "$line"
done <<< $FILES_TO_DELETE
