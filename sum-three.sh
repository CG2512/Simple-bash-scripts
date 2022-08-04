#!/bin/bash
#func for adding 3 numbers
3_num_add(){
#Get 3 paramters
#Add all 3 parameters together
result=$(( $1+$2+$3 ))
}

#Ask user for inputs and save them to variables
#Num1
echo "First number"
read num1
#Num 2
echo "Second"
read num2
#Num 3
echo "Third"
read num3

#call adding func with 3 parameters
3_num_add $num1 $num2 $num3
#Print result
echo "The total of $num1,$num2,$num3 is: $result"
