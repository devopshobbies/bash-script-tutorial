# Session21

## Challenge twenty description

- Challenge 1:
  You are running a Bash script and it keeps giving you an error message, but you can't figure out what the problem is. Write a command that will run the script with debugging enabled, so you can see what is causing the error.

- Challenge 2:
  You are trying to debug a Bash script, but there are too many lines of output and it's hard to find the problem. Write a command that will filter the output to show only lines that contain the word "error".

- Challenge 3:
  You have a Bash script that runs fine on your machine, but it fails when you run it on a remote server. Write a command that will SSH into the server, run the script with debugging enabled, and save the output to a local file.

### Hints to remember

- **Not using the -x flag to enable debugging.**
  When debugging Bash scripts, it's important to enable the -x flag, which prints each command and its arguments as they're executed. This can help you identify issues and errors in your script

- **Using echo instead of printf for debugging output.** When outputting debugging information to the console, it's important to use the printf command instead of echo. This is because echo may not properly handle special characters such as newlines, which can affect the readability of your debugging output.
  To avoid this, use printf instead, like this: printf "Debugging information: %s\n" "$var".
  You might have wondered why I used it, well ...:)

# bash-script-tutorial

Bash scripts related to every session of this tutorial will be stored in isolated branches named after their session name.

## How to use

You can access the main code and the challenge answer key related to every session at their own branch.
