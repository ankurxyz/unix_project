#!/usr/bin/env bash
# File: guessinggame.sh

#Function computing number of files in current directory
function no_of_files {
	local number=$(ls -l | egrep "^-" | wc -l)	
	echo $number
}

echo "How many files are in the current directory?"
read response

while [[ true ]]
do
	if [[ $response -eq $(no_of_files) ]]
then
	echo "Congratulations! You are absolutely correct."
	break
elif [[ $response -gt $(no_of_files) ]]
then
	echo "Your guess is too high! Try again."	
	read response
elif [[ $response -lt $(no_of_files) ]]
then
	echo "Your guess is too low! Try again."
	read response
else
	echo "Invalid Input. Please enter a valid integer."
	read response
fi
done
