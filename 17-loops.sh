#!/bin/bash

# Now we will install the packages using the loops.

DATE=(date +%F)
LOGDIR=/c/users/B.Radhaprathap/repo/shellscript
SCRIPT_NAME=$0
LOGFILE=$LOGDIR/$0-$DATE.log
USERID=$(id -u)
R="\e[31m"
N="\e[0m"
Y="\e[33m"
G="\e[32m"


if [$USERID -ne 0];
then 
    echo -e "ERROR :: installation is $R failure $N"
    exit 1
fi

VALIDATION(){
    if [$1 -ne 0];
    then 
        echo -e "if Installation ... $R FAILURE $N"
    else
        echo -e "if installation ... $G SUCCESS $N"
}



for i in $@
do 
    yum list installed $i &>>$LOGFILE
    if [$? -ne 0]
    then 
        echo "$i is not installed lets install it .
        yum install $i -y &>>$LOGFILE
    else 
        echo -e "$Y $i is already installed $N"
        
    
done