#!/bin/bash

#I'm going to connect to a DATABASE ,So i need password 

#U rememer when we try to login into the server it keeps username & password hide even iif we type it so how it was happening ?

#there is some thing called "READ COMMAND" This will take the input from the terminal now if you print .

echo "Please enter user name"

read USERNAME #this is the variable where the value of the one user entered .

#Line 9 will be printed and the shell will wait till the user enter his username .
# Now just excute 
echo "username entered is:$USERNAME".

#similarly ask for password 
echo "Please enter user password"
read PASSWORD
echo "password entered is:$PASSWORD".