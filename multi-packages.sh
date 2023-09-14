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
            echo -e "$R $2 INSTALLATION IS ERROR $N"
        else 
            echo -e "$G $2 INSTALLATION IS SUCCESS $N"
    fi
}

for i in $i
do 
    yum list installed $i &>>LOGFILE
    if [ $1 -ne 0 ]
        then 
            echo -e "$G $i package is not installed; Let's install it $N"
        else
            echo -e "$Y $i package is already installed $N"
    fi            
    VALIDATE "$?" "$i" &>>LOGFILE
done
