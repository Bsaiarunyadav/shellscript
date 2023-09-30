#!/bin/bash

# colors 
# validations
# log redirections

LOGFILE_DIRECTORY=/tmp
DATE=$(date +%F+%H+%M+%S)
LOGSFILE="$LOGFILE_DIRECTORY/$SCRIPT_NAME-$DATE.log"
SCRIPT_NAME=$0
R="\e[31m"
N="\e[0m"
Y="\e[33m"
G="\e[32m"

#for this we dont need root access so we are not wrinting the command 

DISK_USAGE=$(df -hT | grep -vE 'tmpfs|Filesystem')  #This is the command .
DISK_USAGE_THRESHOLD=1 #we can take a threshold value upto 70%

#Now we got the values i need to loop thorugh it ; to check the actual usage more than threshold or not for the we need have a while loop to read the disk usage .
# IFS= Internal field seperator is space
while IFS= read $line 
do # here  write your statements 
    echo "output: $line"

done <<< $DISK_USAGE                 
# output is this one 
