#!/bin/bash

# Now we try to install mysql
# Again it is our responsibity to check weather the installation was success or not .
# If we give

# yum install mysqll -y

# if [ $? -ne 0 ]
# then 
#     echo "Installation of mysql is error"
#     exit 2 
# else
#     echo "Installation of mysql is success"
# fi

# as MYsqll is wrong it will show error and exit if 

yum install mysql -y

if [ $? -ne 0 ]
then 
    echo "Installation of mysql is error"
    exit 2 
else
    echo "Installation of mysql is success"
fi

# And when we give mysql correctly it will run successfully

#NOTE :- when ever we are running a command it is our respinsibity to validate it correctly 

yum install postfix -y

if [ $? -ne 0 ]
then 
    echo "Installation of postfix is error"
    exit 2 
else
    echo "Installation of postfix is success"
fi

# So now check the above lines just for 2 packages we printed 30 lines of script .
# Don't we think it was a long script 
# Always remember less lines code work more .

# When as you know those lines are repeating again we know we have a principle called as  "DRY" .
# For this there is a priciple called "FUNCTIONS" .
 

