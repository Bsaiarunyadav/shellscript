#!/bin/bash

DATE=$(date +%F)
USERID=$(id -u)
SCRIPT_NAME=$0
LOGSDIR=/home/centos/shellscript/shellscript-logs
LOGFILE=$LOGSDIR/$0-$DATE.log
R="\e[31m"
N="\e[0m"
Y="\e[33m"
G="\e[32m"

if [ $USERID -ne 0 ];
    then 
        echo -e "$R ERROR:: please run this script with root access $N"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ];
    then 
        echo -e "Installing $2 ... $R FAILURE $N"
    else
        echo -e "installing $2 ... $G SUCCESS $N"
    fi
}


for i in $@
do
    yum list installed $i &>>LOGFILE
    if [ $? -ne 0 ]
    then   
        echo "$i is not installed, let's install it"
        yum install $i -y &>>LOGFILE
        VALIDATE $? "$i"
    else
        echo -e "$Y $i is already installed $N"
    fi
done