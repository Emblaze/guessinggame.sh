#!/bin/bash
# file guessinggame.sh
guess=0
num_of_files=$(ls -1 | wc -l)
echo "Can you guess how many files there are in the current directory?"
while [[ guess -ne num_of_files ]]
do
  read guess
  if [[ guess -gt num_of_files ]]
  then
    echo "Your guess was too high, please try again:"

  elif [[ guess -lt num_of_files ]]
  then
    echo "Your guess was too low, please try again:"

  else
    echo "That is correct, congratulations! Thanks for playing."
  exit
fi
done
