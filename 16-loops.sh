#!/bin/bash

# So for example if any one ask you to install 10 packages ,Again we have to do the validation , give statement ,Validation --This is a lenghty process 

# For this kind of situation there is a method called "LOOPS"

# If you ask to loop 1- packages .I should loop it and install 1 by 1 

#DONT THINK ABOUT LOPPS Just imagagine Now we got a program to print basically we write it as :-  
    # echo 1
    # echo 2
    # echo 3
    # echo 4
    # echo 5
# If you want to print 100 lines then you have to type 100 lines it was not practice .

# So here i create a loop .

# HOW I CREATE A LOOP 

# Basicalluy if you take "C++"  syntax is 
# for (int i=0 ;i<100;i++){
        #print i
# }

# In the above command we are setting the i value as 0 and we are printing so it will check weather "0" is les than "100" or not
# if 
# 0 value 
# 0<100 ----> true---> Then it will enter the loop (again) it will CHECK
# 1
# 1<100---->true---> Then it will enter the loop (again) it will CHECK
#  and it will print until "100"

# NOW syntax for loop in shell is :- 
#         for variable in list 
#         do 
#             write your statement 
#         done 

for i in {1....100}
# Here the 1 st value become 1 and print like that it will loopes until 100 .
do 
    echo $i
done 
