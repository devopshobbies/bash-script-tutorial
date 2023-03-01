#!/bin/bash

variable_name="value"

name="Amir"
age=25
# NAME="Amir"

# echo "your family name is ${name}i, and you are ${age} years old"

# This is how you can do basic math and operation and store it on a variable
val=`expr 2 + 2`
echo "Total value : $val"

# as said in the video you can store output of commands, too. use $()
number_of_files=$(ls -l | wc -l)
echo "there are ${number_of_files} in this directory"

# read -p "what's your name? " name
# echo "how old are you? "
# read age
# echo $name $age     

# ----------------------------------------------------------------

# if [ condition ]; then
#  echo "this what you would like to do"

# fi
age=18
name="SHAYAN"
if [ $age -lt 18 ]; then
echo "you are not eligible, since you are ${age} years old"
elif [ $name != "Ehsan" ]; then
echo "you are not eligible, since you are ${name} not Ehsan"
else
 echo "welcome to the club"
fi

# ----------------------------------------------------------------

#arithmetic opretors
# -lt -gt -eq -ne -ge -le

#string opretors
# =, != 
