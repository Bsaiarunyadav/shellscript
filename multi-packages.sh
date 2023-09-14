#!/bin/bash
DATE=$(date +%F)

R=/e[31m"
N=/e[0m"


if [ $? -ne 0 ];
    then 
        echo -e "$R ERROR:: Please run this script with root access $N"
    exit 1
fi