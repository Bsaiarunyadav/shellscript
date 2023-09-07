#!/bin/bash

# Why we should use the conditions in shell script ?
# When you want to install any packages we should run it as a root user if not error will be shown to get the root access to install package 
# So here it was showing the error through the "conditions"
# it is an simple algorithm
# sytanx of alogorithm in shell scripting
# if [Expression]
#    then 
#       These command will run if expression is (True)
#   else 
#       This command will run if expression is  (flase)
# Lets see a simple condition .
# Now the the goal of Number=$1 is to check if the number is greater than 10 or not 
NUMBER=$1
if [ $NUMBER -gt 10 ]
then 
    echo "$NUMBER is greater than 10"
else
    echo "$NUMBER is not greater than 10"
fi 
# fi is the command to ending in shell scripting .