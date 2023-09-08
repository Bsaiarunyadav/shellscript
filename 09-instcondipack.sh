#!/bin/bash

# Now we will try to install a package using the CONDITIONS 

#Our program goal is to install the MYSQL

#Let us think in general way 
# for installing the package we need to follow some steps .
#   1 .check whether user is root or not
#   2 .If not root user exit the program and inform to run this command with root axis.
#   3 .if root user then install the package .

# id -u (this will give you id of the user )
#If Id -u --> 0 then root user 
#If Id -u --> Not 0 Then normal user .

USERID=$(id -u)

if [ $USERID -ne 0 ]
   Then 
       echo "ERROR:: run this script with root axis"
   fi    