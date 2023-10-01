#!/bin/bash

#any one in your project can call this script with arguments .

TO_ADDRESS=$1
SUBJECT=$2
BODY=$3
TEAM_NAME=$4
ALERT_TYPE=$5

# HOW to call this script
# mail.sh TO_ADDRESS SUBJECT BODY TEAM_NAME ALERT_TYPE 
FINAL_BODY=$(sed -e '/TEAM_NAME/DEVOPS-TRANING/g' 's/ALERT_TYPE/High disk usage/g' -e "s/MESSAGE/$BODY/g"  template.HTML)

#echo "all args:$@"

echo "$FINAL_BODY" | mail -s "$SUBJECT" "$TO_ADDRESS"