# Session8

## Challenge seven description

### Part 1: Bash Script with Arrays

- Description: Write a Bash script that declares an array of 5 numbers and prints out the sum of the first and last elements of the array.

### Part 2: Bash Script with Loops

- Description: Write a Bash script that prompts the user to enter a number between 1 and 10, and prints out the multiplication table of that number.

### Part 3: Bash Script with Positional Arguments

- Description: Write a Bash script that takes two positional arguments, a directory and an extension, and lists all files in the directory with the given extension.

- Note : The special variable `$#` is used to get the number of arguments.

### Hints to remember

- When declaring an array in Bash, you can specify the values of its elements separated by spaces, as shown in the line cars=( "BMW" "Tesla" "Benz" "Pride" ).

- To access the values of the elements in an array, you can use ${array_name[index]}, where array_name is the name of the array and index is the index of the element you want to access. For example, ${cars[1]} will give you the value of the second element in the cars array.

- To loop through the elements of an array in Bash, you can use the syntax for item in ${array_name[@]}; do ... done. This will iterate over each element in the array and execute the commands inside the loop for each element.

- The break statement inside a loop will cause the loop to terminate early, while the continue statement will skip the rest of the commands in the loop for the current iteration and move on to the next iteration.

- To access the positional arguments passed to a Bash script, you can use the syntax $1, $2, etc., where $1 is the first argument, $2 is the second argument, and so on.

# bash-script-tutorial

Bash scripts related to every session of this tutorial will be stored in isolated branches named after their session name.

## How to use

You can access the main code and the challenge answer key related to every session at their own branch.
