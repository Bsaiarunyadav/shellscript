#!/bin/bash
# Here we add the $2 argument as "Installing postfix and mysql"   

USERID=$(id -u)

VALIDATE(){
    #$1--> It will receive the argument 1 
    if [ $1 -ne 0 ]
       then 
            echo "$2...failure"
            exit 2
       else     
            echo "$2...success"
    fi
}

if [ $USERID -ne 0 ]
then 
    echo "ERROR:: please run this with root access"
    exit 2
 # else  
    #   echo "Info :: you are root user"
fi

# It is our responsibility again to check weather the instalation is sucess or not 

yum install mysql -y

VALIDATE $? "installing mysql"

yum install postfix -y

VALIDATE $? "installing postfix"

# This shows us hot to decrease the no .of lines in code .
