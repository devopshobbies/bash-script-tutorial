#!/bin/bash

#part 1
echo "this is a message to be stored in a file" > optional_file

#part 2
# redirect both stderr and stdout to /dev/null
apt upgrade &> /dev/null

#part 3
# list upgradabe packages and redirect stdout to 'test' and sterr to /dev/null
apt list --upgradable > test 2> /dev/null

#to get the last three lines of a file where -n is the number of the lines 
tail -n 3 test >  lines



