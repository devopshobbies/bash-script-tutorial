# Session15

## Challenge fourteen description

- Challenge 1: Use grep to find all lines in a file containing the word "apple".

- Challenge 2: Find all lines in a file containing the word "banana", and output the results to a new file called "banana_lines.txt".

- Challenge 3 : To find all lines in a file containing a date in the format "MM/DD/YYYY", use the command:

- Challenge 4: find all lines in a file that start with the word "From:"

- You can use file.txt as an example

### Hints to remember

- grep has many options that can affect its behavior, and it's important to use the appropriate options for the task at hand. For instance, if you're searching for a pattern in a directory recursively, you should use the -r option to search recursively. If you want to count the number of matches, you should use the -c option. If you want to search for a pattern ignoring the case, you should use the -i option. Make sure to read the man page (man grep) or the help documentation

- When searching for a pattern with grep, it's important to anchor the pattern properly to avoid unintended matches. For a striking example, if you're searching for the pattern `the` in a file, you may accidentally match words such as `them` or `there` if you don't anchor the pattern with word boundaries (\b). Similarly, if you're searching for a pattern that contains special characters such as `.` or `\*`, you may need to escape them with a backslash (\) to avoid unintended matches. Make sure to properly anchor the pattern to match only the desired text.

# bash-script-tutorial

Bash scripts related to every session of this tutorial will be stored in isolated branches named after their session name.

## How to use

You can access the main code and the challenge answer key related to every session at their own branch.
