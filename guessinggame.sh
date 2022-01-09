#/bin/bash
# Creation Date: 09 Jan 2022
# Author : Atish Chandra

files=$(ls | wc -l | tr -d " ")
echo "Hey, What's your name"
read name
echo "Let's play a game $name, Guess how many files are in this directory"
while [[ $guess -ne $files ]]
do
	read -p "Enter guess: " guess
	if [[ $guess -eq $files ]]
	then
		echo "That's Correct, Many Congratulations $name"
	elif [[ $guess -lt $files ]]
	then
		echo -e "That's not correct $name, Guess a bit higher"
	else
		echo -e "Maybe This was bit to high $name"
	fi
done
