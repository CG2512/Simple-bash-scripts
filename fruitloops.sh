#!/bin/bash
#Until loop to check if the user's input is 6 letters
#Count the string length with a var
until [[ ${#fruit} -eq 6 ]]
do
#If input does not have 6 letters, ask for input again
echo "Enter 6 letters fruit";
read fruit;
done

#Print out input 10 times with a for loop
#Use ${seq 1 seq END}
loop_time=10
for times in $(seq 1 $loop_time)
do
#print this for 10 times
echo "you entered: $fruit";
done

#While loop to output each letters of the input
#Counter for which letters
letter_counter=0 #the first letter is counted as 0 instead of 1,blame bash
#Split letters based on the counter
#when counter is 6 all letters are out so stop the loop
while [[ $letter_counter -le 6 ]]
do
#print letter
echo "${fruit:$letter_counter:1}";
#increase counter by 1 so loop can move to next letter
letter_counter=$(( $letter_counter+1 ));
done
