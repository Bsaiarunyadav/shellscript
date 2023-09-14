#!/bin/bash
NUMBER=$1

if [ $NUMBER -gt 1000 ];
    then 
        echo "$NUMBER IS NOT GREATER THAN 1000"
    else 
        echo "$NUMBER IS GREATER THAN 1000"
fi