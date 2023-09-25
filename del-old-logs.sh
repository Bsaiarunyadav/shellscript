#!/bin/bash

APP_LOGS_DIR="/home/centos/shellscript/logfiles"
DATE=$(date +%F)
SCRIPT_NAME="$0"
LOGSDIR="/home/centos/shellscript/shellscript-logs"
LOGSFILE="$LOGSDIR/$SCRIPT_NAME-$DATE.log"
FILES_TO_DELETE=$(find "$APP_LOGS_DIR" -name "*.log" -type f -mtime +10)
echo "$FILES_TO_DELETE"

while read -r line
do
    echo "Deleting $line" >> "$LOGSFILE"
    rm -f "$line" # Remove the -r option
done <<< "$FILES_TO_DELETE"
