#!/bin/bash

#you can always get the values of variables from command line .

#here instead of Hard coding the values just give it as $1 & $2 .

# in previous one we assigned names to person1 and person2 instead of this 

# just give tha value as .

#In the below command we are editing the file from outside but not from inside .

#Note:- coding is the best practice to avoid the making changes inside the file try to make the changes from outside like shown below

PERSON1=$1
PERSON2=$2


echo "$PERSON1:hi $PERSON2"
echo "$PERSON2:hi $PERSON1"
echo "$PERSON1 :asked $PERSON2"
echo "$PERSON2 :replyed to it yes $PERSON1"
echo "$PERSON2 :said to $PERSON1"