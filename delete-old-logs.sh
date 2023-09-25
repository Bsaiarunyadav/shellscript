#!/bin/bash

APP_LOGS_DIR=/home/centos/shellscript/logfiles  
DATE=$(date +%F+%H+%M+%S)
SCRIPT_NAME="$0"
LOGSDIR=/home/centos/shellscript/shellscript-logs
LOGSFILE="$LOGSDIR/$0-$DATE.log"
FILES_TO_DELETE=$(find "$APP_LOGS_DIR" -name "*.log" -type f -mtime +10)

echo "script started excuting at $DATE"


while read -r line
do
    echo "Deleting $line" &>>$LOGSFILE
    rm -f "$line"
done <<< "$FILES_TO_DELETE"