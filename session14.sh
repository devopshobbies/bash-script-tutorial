#!/bin/bash 

echo "Welcome to exmover!"
read -p "what kind of file do you have (e.g jpg) ? " TYPE
for FILE in sample-files/*.$TYPE
do
   read -p "Are sure you want to move $FILE ? " ANSWER
   case $ANSWER in
    y | [yY][eE][Ss])
        mkdir -p $TYPE
        echo "moving $FILE"
        mv $FILE $TYPE
        exit 0
        ;;
    *)
        echo "only enter YES/yes/y"
        exit 1
       ;;
   esac
done
exit 0


