#!/bin/bash

#you can always get the values of variables from command line .

#here instead of Hard coding the values just give it as $1 & $2 .

# in previous one we assigned names to person1 and person2 instead of this 

# just give tha value as .

PERSON1=$1
PERSON2=$2


echo "$PERSON1:hi $PERSON2"
echo "$PERSON2:hi $PERSON1"
echo "$PERSON1 :asked $PERSON2"
echo "$PERSON2 :replyed to it yes $PERSON1"
echo "$PERSON2 :said to $PERSON1"