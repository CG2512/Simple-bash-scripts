#!/bin/bash
#func for printing outputs(2 parameters)
two_towns(){
#Printing outputs
#First parameters is where user come from
echo "You come from  $1"
#Second parameter is where user live now
echo "You live in $2"
#Comparing 2 town name
if [[ $1 == $2 ]]
then
#If they are the same, print this
echo "You live in the same place you come from";
fi
#Print the number of characters in user's origin place
#${#string} for counting string_length
echo "Characters in $1: ${#1}"
}

#Getting inputs and save them to variable
#Town that user comes from
echo "Where you come from"
read origin_town
#Town that user lives in
echo "Where you live"
read living_town
#Calling printing func with 2 town names
two_towns $origin_town $living_town
