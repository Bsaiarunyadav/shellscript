#!/bin/bash
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGSDIR=/home/centos/shellscript/shellscript-logs
LOGSFILES=$LOGSDIR/$SCRIPT_NAME+$DATE.log/
USERID=$(id -u)
R="\e[31m"
N="\e[0m"
Y="\e[33m"
G="\e[32m"


if [ $USERID -ne 0 ];
    then 
        echo -e "$R ERROR:: Please run this script with root access $N"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ];
        then 
            echo -e "$R INSTALLATION IS ERROR $N"
        else 
            echo -e "$G INSTALLATION IS SUCCESS $N"
    fi
}

for i in $1
do 
    yum install -y &>>LOGFILE
    if [ $? -ne 0 ]
        then 
            echo -e "$G $1 package is not installed; Let's install it $N"
        else
            echo -e "$Y $1 package is already installed $N"
    fi            
    VALIDATE "$?" &>>LOGFILE
done
