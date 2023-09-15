#!/bin/bash
APP-LOGS-DIR=/home/centos/app-logs
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGSDIR=/home/centos/shellscript/shellscript-logs
LOGSFILE=$LOGSDIR/$0-$DATE.log

FILES-TO-DELTE=$(find $APP_LOGS_DIR  -name "*.log" -type f -mtime +14)
echo"$FILES-TO-DELTE"