#!/bin/bash


: ' 
Using logical operators:

  [ condition1 -o/-a condition2 ], [ condition1 ] &&/|| [ condition2 ]. [[ condition1 ||/&& condition2  ]] 

'
# checks if the given number is between 0 and 10 or not
read -p "give a number between 0 and 10: " number

if [[ "$number" -ge 0 && "$number" -lt 10 ]]; then

   echo "Number is correct and the inputed number is ${number}" 
   exit 0

else 
   echo "Number is not correct becuase ${number} is not between 0 and 10" >&2
   exit 1
fi
: ' 
Heres is a list of file and directory operators you can also check a full version of them on:
https://www.tutorialspoint.com/unix/unix-basic-operators.htm
existance of :
-f = regular file
-e = any file
-d = directory
-b = block devices
-x/ -w/ -r = file permissions
'

read -p "give a path to an existing file: " path

: ' if [[ ! -f "$path" || ! -r "$path" ]]; then
   echo "file is not either a regular file or not readable" >&2
   exit 1
 else
  echo "file exists and is readable"
  exit 0
fi '


# if the variable is empty then it will be true. there was an exclaimation mark(!) in the video which 
# posed a problem because it made it flase
# -n is also used but it comes handy when the var is null
: ' if [[ -z "$path" ]]; then

 echo "you haven't entered a path"
 exit 1

fi '

# if [[ ! -f "$path" || ! -x "$path" ]]; then
#    echo "Error : file is not either a regular file or not executable" >&2
#    exit 1
# else
#    echo "file exists and is executable"
#    exit 0
# fi
