#!/bin/bash

# DATA TYPES

#Dont worry about data types ,shell script can intelligently understand .
#1 Number is a general Data type 
#2 boolean 0 & 1
#  0 means - faliure 
#  1 means - sucess
# SIMILARLY we have Another Datatype called  "array" It mean that hold multiple values .

PERSONS=("Ramesh" "suresh" "harish") #this is called array ,Instead single it can hold multiple values .
#NOTE :- Inside array we always refers values with index and it starts from "0"

echo "first person:${PERSONS[0]}" #this will show only 1 member that means RAMESH as index i.e "0"