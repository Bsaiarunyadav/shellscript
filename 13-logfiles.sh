#!/bin/bash
# Now let us improvise some more . When we run any code in return we get lot of points which are called as "LOGFILES"
# EXAMPLE :-
# When we run this-------> sudo sh 12-functions2.sh

    # Last metadata expiration check: 19:11:17 ago on Fri 08 Sep 2023 02:12:15                                                           
    # Package mysql-8.0.26-1.module_el8.4.0+915+de215114.x86_64 is already inst                                                          
    # Dependencies resolved.
    # Nothing to do.
    # Complete!
    # installing mysql...success
    # Last metadata expiration check: 19:11:20 ago on Fri 08 Sep 2023 02:12:15                                                           
    # Package postfix-2:3.5.8-7.el8.x86_64 is already installed.
    # Dependencies resolved.
    # Nothing to do.
    # Complete!
    # installing postfix...success

# If you are writing any script "LOGFILES" are very important to know what happend .    
# EX ---> when er rin any command and later if we "CLEAR" then the log files are gone .

# SO the long files are very important to know what we are doing - So we should create a logfile to store them .
# BUT For that we need to discuss something called "REDIRECTIONS".
# EX :- ls - l
        # 1
        # 2   

# Now for storing this in to log files 

# COMMAND IS :- "ls -l > ls .log"  and check "cat ls .log"
        # To remove log files --> "rm -rf ls .log"

# ALSO Now if are giving and wrong command 
#   EX :- "lsss -l > ls .log"
# check :-   "cat ls .log"
# The logs will not be shown as we printed wrong .
# The **REDIRECTION** by default shows the "success OUTPUT".
# In Redirections 
        # 1  MEANS SUCCESS 
        # 2  MEANS Failure 
        # &  MEANS both success and failure .
# HERE By default we no need to give "1"  as we know it was success  
# EXAMPLE :- ls -l 1> ls .log
# BUT when you give " lss -l 2>ls .log " It wont be shown & printed on screen . But it will be stored in "CAT ls.log " .
# AS we know while practicing "Catalogue"
    #   > --->  It will remove previous content and add new content 
    #   >>----> It will not remove previos content But apend .
#  EXAMPLE :- 
        # lsss -l &>>ls .log 
        # cat ls .log 
    # again print 
        # ls -l &>>ls .log
        # cat ls .log 
# Now Here the content was not getting removed but it was apending .
# We should use ">>&" To redirect the success and failure  content .
# So now we should write a script basing upon log files .

    # DATE and TIME STAMP 
# When ever we are writing scripts DATE and TIME STAMPS are very important because to Know when we excuted it .
# to get the complete format :- 
            # "date +%F-%H-%M-%S"
            #DATE=$date +%F-%H-%M-%S

# NOW we will write a script

DATE=($date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

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

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "ERROR:: please run this with root access"
    exit 2
fi

yum install mysql -y &>>$LOGFILE

VALIDATE $?

yum install postfix -y &>>$LOGFILE

VALIDATE $? 

