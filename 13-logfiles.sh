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

# ALSO Now if you are giving a wrong command 
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

DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32M"
N="\e[0M"

VALIDATE(){
    #$1--> It will receive the argument 1 
if [ $1 -ne 0 ]
    then 
        echo -e "$2 ... $R failure $N"
        exit 1
    else     
        echo -e "$2 ... $G success $N"
    fi
}

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "ERROR:: please run this with root access"
    exit 1
fi

yum install mysql -y &>>$LOGFILE

VALIDATE $? "installing mysql"

yum install postfix -y &>>$LOGFILE

VALIDATE $? "installing postfix"

# HERE IN THe above script 
# We are giving the date and time . And the log file  will be stored in the tmp file with the script name , Date & time.

# Now we will discuss colours in shell script with some codes for the best understanding in the scripts .
# AND THE SYNTAX IS 
    #EX :- \e[31m

    # Black        0;30     Dark Gray     1;30
    # Red          0;31     Light Red     1;31
    # Green        0;32     Light Green   1;32
    # Brown/Orange 0;33     Yellow        1;33
    # Blue         0;34     Light Blue    1;34
    # Purple       0;35     Light Purple  1;35
    # Cyan         0;36     Light Cyan    1;36
    # Light Gray   0;37     White         1;37

# NOW TO CHECK :-
    # EX 1 :-
    # IF YOU PRINT :- echo "\e[31m HELLO WORLD"
    # It will print normally
    # BUT you should tell i'm enabling colour (JUST ADD -e ) to the echo statement then it will consider as colour   
    # IF YOU PRINT :- echo -e "\e[31m HELLO WORLD"
    # Here it will print with colour RED .
    # EX 2 :- IF YOU PRINT :- echo -e "\e[31m HELLO WORLD, IAM LEARNING DEVOPS
    # HERE it will print the whole thing in the same colour But i need the "IAM LEARNING DEVOPS" in white THEN .
    # echo -e "\e[31m HELLO WORLD, \e[0m IAM LEARNING DEVOPS"
    # HERE it will print "HELLO WORLD" in RED and "IAM LEARNING DEVOPS" in white .

# In the above script "echo -e " is the syntax that you are informing the shell to enable the colour .

# LET us improvise the script now .
# In above already written script You just add 


    #ADD THE FUCNTIONS AS 
        # R="\e[31m"
        # G="\e[32M"
        # N="\e[0M"


        #VALIDATE(){
    #$1--> It will receive the argument 1 
    #     if [ $1 -ne 0 ]
    #        then 
    #             echo -e "$2... $R failure $N" 
    #             exit 2
    #        else     
    #             echo -e "$2... $G success $N"
    #     fi
    # }
