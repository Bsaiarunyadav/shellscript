#!/bin/bash

# Now we try to install mysql
# Again it is our responsibity to check weather the installation was success or not .
# If we give 
yum install mysqll -y

if [ $? -ne 0 ]
then 
    echo "Installation of mysql is error"
    exit 2 
else
    echo "Installation of mysql is success"
fi

# as MYsqll is wrong it will show error and exit if 



# And when we give mysql correctly it will run successfully
