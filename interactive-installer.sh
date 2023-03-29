#!/bin/bash

PS3="Choose your option : "

# Prompt the user for their name
read -p "What is your name? " name

# Greet the user by name
echo "Hello, $name!"

# Prompt the user for the package to install
echo "Which package would you like to install?"
select package in apache2 mysql-server php python3;
do
    case $package in
        apache2|mysql-server|php|python3)
            echo "You have selected $package."
            break
            ;;
        *)
            echo "Invalid selection, please choose a valid option."
            ;;
    esac
done

# Install the selected package
sudo apt-get install  $package
echo "Package installation complete."

