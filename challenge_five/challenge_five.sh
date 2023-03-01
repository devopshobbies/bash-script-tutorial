#!/bin/bash

read -p "Enter a number between 0 and 100 : " number

# as it's mentioned in the video it's recommended to consider the negative condition but here
# we want to understand the usage of &&
if [[ "$number" -ge 0 && "$number" -lt 100 ]]; then
    echo "Good, your number is ${number}"
    read -p "Now, enter a path to a file that you want the number to be stored in : " path
else 
    echo "Error : please enter a number between 0 and 100!!">&2
    exit 1
fi

if [[ ! -f "$path" || ! -r "$path" ]]; then
    echo "Error : the file is either not existing or not regular or unreadable!!" >&2
    exit 1
else
    echo $number > $path
    echo "Awsome, here is the path to your number: ${path} "
    exit 0
fi 

