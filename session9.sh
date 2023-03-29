#!/bin/bash

<<whyFuncs
DRY = Don't repeat yourself
reusability
maintainable
better troubleshooting
avoid long scripts
devide your script into multiple pieces
whyFuncs

# how to write one
# function function_name() {
# # ur code goes here
#     echo "this is a function"
#     my_func
# }

# my_func() {
#   echo "this is also a function"
# }

greeting() {
   echo "Hello, $@"
  #  echo "this is the zero parameter, $0"
}


# my_func
# greeting Hasan Amir


# file_exists() {
#   if [ -f "$1" ]; then
#     echo "file exists"
#   else
#     echo "Error : not found"
#     error_message "error"
#   fi
#   cat doesnt_exist &> /dev/null
#   echo $?
# }

# file_exists /etc/nginx.conf




function error_message() {
    echo "$1" >&2
}


# using functions with arrays

# NAMES=('Shayan' 'Ali' 'Amir' 'Hasan')
# function print_arrays() {
#     for NAME in $@; do
#         echo $NAME
#     done
# }
# print_arrays ${NAMES[@]} 

# # prints PID
# echo "[$$]"
# sleep 100




# backup
read -p "Enter the path to the file that you want to backup: " BACKUP_PATH
backup() { 

    if [ -f $1 ]; then
        mkdir -p /tmp/backup
        local BACKUP_PATH="/tmp/backup/$(basename ${1}).$(date +%F).${$}.bk"
        echo "backing up $1 to ${BACKUP_PATH}"
        cp $1 $BACKUP_PATH
        return 0
    else 
        error_message "error creating backup"
        return 1
    fi  
}

backup $BACKUP_PATH

if [ $? -eq 0 ]; then
   echo "Backed up successfully" 
   exit 0
else 
   exit 1
fi