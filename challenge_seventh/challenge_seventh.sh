#!/bin/bash

# Part 1
# This part declares an array of 5 numbers and prints out the sum of the first and last elements of the array.

numbers=(3 7 2 9 5) # declare an array of 5 numbers
sum=$((${numbers[0]} + ${numbers[-1]})) # add the first and last element of the array

echo "The sum of the first and last element is: $sum"


# Part 2
# This part prompts the user to enter a number between 1 and 10, and prints out the multiplication table of that number.

read -p "Enter a number between 1 and 10: " num # prompt user to enter a number
if (( num >= 1 && num <= 10 )); then # check if number is within the range
    for i in {1..10}; do # loop through the numbers 1 to 10
        result=$((num * i)) # multiply the number with the current index
        echo "$num x $i = $result" # print the result
    done
else
    echo "Invalid number!" # print error message if number is not within the range
fi

# Part 3
# This part takes two positional arguments, a directory and an extension, and lists all files in the directory with the given extension.

if [ $# -ne 2 ]; then # check if the number of arguments is correct
    echo "Usage: $0 directory extension" >&2
    exit 1
fi

if [ ! -d "$1" ]; then # check if the directory exists
    echo "Error: Directory '$1' does not exist." >&2
    exit 1
fi

ls "$1"/*."$2" # list all files with the given extension in the directory



