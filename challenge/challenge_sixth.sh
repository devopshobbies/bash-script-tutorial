#!/bin/bash

# Prompt the user to enter their favorite color
read -p "Enter your favorite color: " color

# Check if the entered color is a primary color
case "$color" in
    [Rr][Ee][Dd]|[Bb][Ll][Uu][eE]|[Yy][Ee][Ll][Ll][Oo][wW])
        echo "Your favorite color is a primary color."
        ;;

    # Check if the entered color is a secondary color
    green|orange|purple)
        echo "Your favorite color is a secondary color."
        ;;

    # If the entered color is not a primary or secondary color, display an error message
    *)
        echo "Your favorite color is neither a primary nor a secondary color."
        ;;
esac

# Print the numbers from 1 to 10
for i in {1..10}
do
   echo $i
done

