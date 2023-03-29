# Session16

## Challenge fifteen description

- Challenge 1 : Using the awk command, print the first column of a comma-separated values (CSV) file.

- Challenge 2: Use awk to print the second field of a file separated by ":".

- Challenge 3: Use awk to find the average of the numbers in the fourth column of a file called "numbers.txt", and print the result to the terminal.

### Hints to remember

- By default, awk uses whitespace as the field separator when processing input data. If your data is delimited by a different character, such as a comma or a semicolon, you need to specify the appropriate field separator using the -F option. For example, to process a CSV file, you should use the command awk -F',' '{print $1}' file.csv to extract the first field of each record. Make sure to specify the appropriate field separator to correctly process your data.

- **Not understanding the difference between print and printf**: awk has two ways to output text: print and printf. print outputs a newline character at the end of each record, while printf does not. printf allows you to format the output using C-style formatting codes, such as %s for strings and %d for integers. Make sure to use the appropriate command depending on the output you need. If you need to output text with a newline at the end of each record, use print. If you need to format the output, use printf.

# bash-script-tutorial

Bash scripts related to every session of this tutorial will be stored in isolated branches named after their session name.

## How to use

You can access the main code and the challenge answer key related to every session at their own branch.
