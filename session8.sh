#!/bin/bash


#Demonstration of for loop with positional arguments
echo "Printing positional arguments using a for loop:"

for argument in "$@" 
do 
   echo $argument
done

# start of for loop

# Using a for loop with a list of values
for fruit in apple banana cherry
do
    echo "I like $fruit"
done

# Using a for loop with a command substitution
for file in $(ls)
do
    echo "File: $file"
done

# Using a for loop with a range of numbers
for i in {1..5}
do
    echo "Number: $i"
done

# Using a for loop with C-style syntax
for (( i=0; i<5; i++ ))
do
    echo "Count: $i"
done

# Using a for loop with an array
fruits=("apple" "banana" "cherry")
for fruit in "${fruits[@]}" 
do
    echo "Fruit: $fruit"
done


# end of for loop





# start of while loop

# Using while loop with a condition
counter=1
while [ $counter -le 10 ]
do
  echo $counter
  ((counter++))
done

# Using while loop with a read command to get user input
input=""
while [ "$input" != "quit" ]
do
  read -p "Enter a word (or 'quit' to exit): " input
  echo "You entered: $input"
done

# Using while loop with a file input
while read line
do
  echo $line
done < input_file.txt

# Using while loop with command substitution
output=$(ls)
while read line
do
  echo $line
done <<< "$output"

# end of while loop

# start arrays



# Unset the element with index 2 from the "cars" array
unset cars[2]

# Set the element with index 2 of the "cars" array to "Peykan"
cars[2]="Peykan"

# Print all elements of the "cars" array
echo "${cars[@]}"

# Print the number of elements in the "cars" array
echo "${#cars[@]}"

# Print the indices of all elements in the "cars" array
echo "${!cars[@]}"

# Print the value of the element with index 0 in the "cars" array
echo "${cars[0]}"

# Print the value of the element with index 1 in the "cars" array
echo "${cars[1]}"

# Set the "cars" array to contain the elements "BMW", "Tesla", "Benz", and "Pride"
cars=( "BMW" "Tesla" "Benz" "Pride" )

# Loop through the elements of the "cars" array and print them
for item in ${cars[@]}; do
    if [ $item = "Tesla" ];then
        # Print a message if the current element is "Tesla"
        echo "you had a tesla in your car list, I hate it!"
        break
    fi
    # Print the current element
    echo $item
done

# Loop through the elements of the "cars" array and print them
for item in ${cars[@]}; do
    if [ $item = "Tesla" ];then
        # Print a message if the current element is "Tesla"
        echo "you had a tesla in your car list, I ignore it!"
        continue
    fi
    # Print the current element
    echo $item
done






