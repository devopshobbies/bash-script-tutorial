# Session3

## Challenge two description

1 - echo "this is a message to be stored in a file" then redirect its output to a file of your choice.

2 - run a command that performs a task and redirect both of its error and output to the trash.

3 - get the last 3 lines of it and redirect them to a file named lines.
- you may use tail with a suitable flag to do such a thing. 

### Hints to remember
- you input a command and you get an output; what you have entered using your keyboard is called stdin and what get as an output is called stdout.

- if the command generated an error then the error output is called stderr. 

- In very simple terms, file descriptor A.K.A fd is an integer number somewhere in the OS that represents every file that is opened by a process.

- `/proc/PID/fd` is the path which you can check FDs that belongs to a process where PID is the Process Identifier.

- 1> redirects stdout and 2> stderr and &> redirects both.

# bash-script-tutorial
Bash scripts related to every session of this tutorial will be stored in isolated branches named after their session name. 
## How to use 
You can access the main code and the challenge answer key related to every session at their own branch. 

