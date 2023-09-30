#!/bin/bash

LOGFILE_DIRECTORY=/tmp
DATE=$(date +%F+%H+%M+%S)
LOGSFILE="$LOGFILE_DIRECTORY/$SCRIPT_NAME-$DATE.log"
SCRIPT_NAME=$0
# ...
while IFS= read line 
do
    usage=$(echo $line | awk '{print $6}' | cut -d % -f1) 
    Partition=$(echo $line | awk '{print $1}')
    if [ $usage -gt $DISK_USAGE_THRESHOLD ];
    then
        message+="HIGH DISK USAGE ON $partition: $usage\n"
    fi
done <<< $DISK_USAGE                 
echo -e "message: $message"
