#!/bin/bash

 # FUNCTIONS
 # HERE you will keep the code inside the functions which is more often repeated ,And call when ever you require .
# Functions will do some work on behalf of us and it will update what happend .

# In shell scripting the syntax of functions will be like .

# FUNCTION-NAME(){
#       here you write the your statement & call when ever you want 
# }


# this function should validate the previous command and inform the user it is success .
USERID=$(id -u)

VALIDATE(){
    #$1--> It will receive the argument 1 
    if [ $1 -ne 0 ]
       then 
            echo "installation...failure"
            exit 2
       else     
            echo "Installation...success"
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

VALIDATE $?

yum install postfix -y

VALIDATE $? 