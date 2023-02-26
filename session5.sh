#!/bin/bash

VARIABLE_NAME="value"

NAME="Ali"

AGE=25
# stores the output of a command which in this case is the number of files we have
file_count=$(ls -l | wc -l )

# use ${var_name} when mixed with extra data
echo "Your name is ${NAME}, and you are ${AGE}"
echo $file_count

#used to ask for an input from the user
read -p "what's your name? " NAME

echo $NAME

#----------------------------------------------------------------
AGE=20
NAME="Ali"
#checks if the user is older than 18 if not check if their name is Ali
if [ $AGE -lt 18 ]; then
    echo "you are illegal"
elif [ $NAME != "Ali" ]; then
    echo "you are not Ali so we don't love you"
else
    echo "welcome to the club, buddy"
fi

# you can also write if inline code

if (( $NAME == "Ali" )); then echo "You are so lucky"; fi 

# arithmetic operators
#-lt -gt -ge -le -eq -ne

#string operators/validation
#==,=, !=
