#!/usr/bin/env bash
# Definig the function "guessinggame"
function guessinggame {
	# Find the number of files in the current directory
	local n=$(ls -l | egrep ^- | wc -l)
	# The question to ask is stored in local variable
	local question="How many files are in the current directory?_"
	# Ask the question
	echo -n $question
	# Read the users answer
	read guess
	while  [[ $guess != $n ]]
	# If the answer is incorrect, provide feedback and ask again
	do
		if [[ $guess -lt $n ]]
		then
			echo "Your guess was too low!"
		else
			echo "Your guess was too high!"
		fi
		echo -n $question
		read guess
	done
	# The answaer is correct; send congrats message
	echo "Congratulations! There are $n files"
}
# Calling the function
guessinggame
