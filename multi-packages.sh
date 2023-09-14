#!/bin/bash
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGSDIR=/home/centos/shellscript/shellscript-logs
LOGSFILE=$LOGSDIR/$0-$DATE.log
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

for i in $@
do 
    yum list installed $i &>>LOGFILE
    if [ $? -ne 0 ]
        then 
            echo -e "$G $i package is not installed; Let's install it $N"
            yum install $i -y
            VALIDATE "$?" "$i"
        else
            echo -e "$Y $i package is already installed $N"
    fi            
done
