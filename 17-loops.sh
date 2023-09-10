#!/bin/bash

# Now we will install the packages using the loops.

for i in {$@}
do 
    yum install $i -y
done