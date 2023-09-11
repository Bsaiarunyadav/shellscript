#!/bin/bash

#These are the special charecters given in default by linux

VAR1=$1
VAR2=$2

echo "script name:$0"
echo "variables:$VAR1"
echo "All VAR:$@"
echo "No of VARS:$#"

# When we run this command :- 

    # 52.205.55.98 | 172.31.38.78 | t2.micro | https://github.com/Bsaiarunyadav/shellscript.git
    # [ centos@ip-172-31-38-78 ~/shellscript ]$ sh 14-special-characters.sh 13 14 15
    # script name:14-special-characters.sh
    # variables:13
    # All VAR:13 14 15
    # No of VARS:3
