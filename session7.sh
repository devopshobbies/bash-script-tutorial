#!/bin/bash
# This is a Bash script that prompts the user for input and performs various actions based on the input.

read -p "What's your favorite fruit? " fruit
# Prompt the user to enter their favorite fruit and store the input in a variable called "fruit".

case "$fruit" in
apple)
    echo "apple costs you 2$"
    exit 0
    ;;
orange)
    echo "orange costs you 2$"
    exit 0
    ;;
kiwi)
    echo "kiwi costs you 2$"
    exit 0
    ;;
*)
    echo "your fruit is not available in this store." > &2
    exit 1
    ;;
esac
# Check the value of "fruit" and print the cost of the fruit if it is available in the store.

read -p "Enter a file or directory path: " path
# Prompt the user to enter a file or directory path and store the input in a variable called "path".

case "$path" in
    -f*)
        if [ -f "${path:3}" ]; then
            echo "File exists"
            exit 0  
        else
            echo "File does not exist" > &2
            exit 1
        fi
        ;;
    -d*)
        if [ -d "${path:3}" ]; then
            echo "Directory exists"
            exit 0
        else
            echo "Directory does not exist" > &2
            exit 1
        fi
        ;;
    *)
        echo "Invalid input"
        exit 1
        ;;
esac
# Check the value of "path" and print whether it is a file or directory, or print an error message if the input is invalid.

read -p "Enter y or n: " ANSWER
# Prompt the user to enter 'y' or 'n' and store the input in a variable called "ANSWER".

case "$ANSWER" in
    [yY]|[yY][eE][sS])
        echo "You answered yes."
        exit 0
        ;;
    [nN]|[nN][oO])
        echo "You answered no."
        exit 0
        ;;
   *)
        echo "Invalid answer."
        exit 1
        ;;
esac
# Check the value of "ANSWER" and print whether the user answered yes or no, or print an error message if the input is invalid.

for i in 1 2 3 4 5
do
   echo $i
done
# Loop through the numbers 1 to 5 and print them.

while read line
do
   echo $line
done < file.txt
# Read lines from the file "file.txt" and print them.

until [ -e "example.txt" ]; do
    sleep 1
done
# Wait until the file "example.txt" is created.

echo "File created!"
# Print a message indicating that the file has been created.

