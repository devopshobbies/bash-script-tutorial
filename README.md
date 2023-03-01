# Session6

## Challenge five description

- 1 . ask the user for a number between 0-100
- 2 . validate the number and check if it's entered correctly, otherwise throw an error message and a non-zero code.

- 3 . at this stage, ask the user for a path to an optional file
  verify if the file exists or is readable. If it didn't exist or wasn't readable, you should throw an error message and a non-zero code, same as the first step.
- 4 . at last, echo the variable that holds the number for you then redirect it to the path and give the user the path to the file. Exit with zero code. That's it! Good luck!

### Hints to remember

- you can use either `[[ ]]` or `[ ]` when checking for condition but ensure that you know the diffrence.

- when statement includes ||/-o the command will be executed if one of the conditions became True whereas when it comes to &&/-a both conditions must be True.

- `-f` Unix operator, solely checks for regular files but `-e` checks for the existance of all files regardless of their type.

- always use `exit integer` in your commands to call an exit systemcall and throw the exit code.

- you can checkot this [tutorial ](https://www.tutorialspoint.com/unix/unix-basic-operators.htm#)to learn more about Unix operators.

# bash-script-tutorial

Bash scripts related to every session of this tutorial will be stored in isolated branches named after their session name.

## How to use

You can access the main code and the challenge answer key related to every session at their own branch.
