#!/bin/bash

read -p "What kind of file do you have (e.g. jpg)? " TYPE
read -p "What operation do you want to perform? (copy/move) " OP

if [ $OP = "move" ]
then
  for FILE in *.$TYPE
  do
     read -p "Are you sure you want to move $FILE? " ANSWER
     case $ANSWER in
      y | [yY][eE][Ss])
          mkdir -p $TYPE
          echo "Moving $FILE"
          mv $FILE $TYPE
          exit 0
          ;;
      *)
          echo "Please enter YES/yes/y to continue."
          exit 1
         ;;
     esac
  done
elif [ $OP = "copy" ]
then
  for FILE in *.$TYPE
  do
     read -p "Are you sure you want to copy $FILE? " ANSWER
     case $ANSWER in
      y | [yY][eE][Ss])
          mkdir -p $TYPE
          echo "Copying $FILE"
          cp $FILE $TYPE
          exit 0
          ;;
      *)
          echo "Please enter YES/yes/y to continue."
          exit 1
         ;;
     esac
  done
else
  echo "Invalid operation. Please enter 'move' or 'copy'."
  exit 1
fi
