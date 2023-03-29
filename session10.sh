#!/bin/bash

select VARNAME in ${array[@]}
do
    commands
done


options=("Candy 1" "Candy 2" "Candy 3" "Quit")

PS3="please select your favorite candy : "

echo "Welcome to the candy shop!"
select candy in "${options[@]}"
do
  case $candy in
    "Candy 1")
      echo "You chose Candy 1"
      ;;
    "Candy 2")
      echo "You chose Candy 2"
      ;;
    "Candy 3")
      echo "You chose Candy 3"
      ;;
    "Quit")
      break
      ;;
    *)
     echo "Invalid option selected";;
  esac
done




