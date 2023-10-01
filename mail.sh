#!/bin/bash

#any one in your project can call this script with arguments .

TO_ADDRESS=$1
SUBJECT=$2
BODY=$(sed -e 's/[]\/$*.^[]/\\&/g' <<< $3)
echo "escaped content : $BODY"
TEAM_NAME=$4
ALERT_TYPE=$5

# HOW to call this script
# mail.sh TO_ADDRESS SUBJECT BODY TEAM_NAME ALERT_TYPE 
FINAL_BODY=$(sed -e "s/TEAM_NAME/$TEAM_NAME/g" -e "s/ALERT_TYPE/$ALERT_TYPE/g" -e "s/MESSAGE/$BODY/g"  template.HTML)

#echo "all args:$@"

echo "$FINAL_BODY" | mail -s "$(echo -e "$SUBJECT \nContent-Type: text/html")" "$TO_ADDRESS"