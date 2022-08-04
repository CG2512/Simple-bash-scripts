#!/bin/bash
#Using the RANDOM module with $$, don't ask me why
RANDOM=$$
#Func that will let you use RANDOM to a upper limit
random_to(){
#RANDOM value will divide the given limit( parameter) and get the remainder
#i have no idea why this works
newval=$(( $RANDOM % ($1 +1) ))
}
#Func for comparing guess with generated number
guess_comparing(){
#If guess is higher
if [[ $guess -gt $newval ]]
then
echo "lower";
#if guess  is lower
elif [[ $guess -lt $newval ]]
then
echo "higher";
fi
}

#call func with the upper limit as 20(0-20)
random_to 20
#Print the generated number
#echo $newval(unsused for now)
#Counter for the number of guess
guess_counter=0
#Until loop when user's guess is not correct
until [[ $guess -eq $newval ]]
do
#Ask user for input
echo "Guess?";
read guess;
#comparing input with the generated number
guess_comparing;
#Add 1 to the counter after each guess
guess_counter=$(( $guess_counter+1 ))
#Apprently i don't have to create a guess var before using the func,weird
done
#Print result after game is done
echo "You got it right on guess $guess_counter"

