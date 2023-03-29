# Session20

## Challenge nineteen description

- Challenge 1:
  Create a script that will log the date and time each time it is executed, with the log entries appended to a file called "script.log" in the same directory as the script.

- Challenge 2:
  Create a script that will log any errors that occur during its execution, with the log entries appended to a file called "error.log" in the same directory as the script.

- Challenge 3:
  Write a bash script that uses the logger command to log a message to syslog with the following information: the current date and time, the username of the user running the script, and the message "Script executed successfully". The message should be logged with the "notice" priority level and with the facility "local0".

- The whoami command is used to get the username of the user running the script.

### Hints to remember

- **Overwriting log files instead of appending to them.**
  When logging output to a file, it's important to ensure that you're appending to the file and not overwriting it. One common mistake is to use the single > operator, which overwrites the file with the new output each time the command is run.
  To avoid this, use the double >> operator to append the output to the end of the file, like this: command >> logfile.

- **Not including enough information in the log messages.**
  When logging output to a file, it's important to include enough information in the log messages to make them useful for debugging and troubleshooting. One common mistake is to include only vague or incomplete information, which can make it difficult to diagnose issues.
  To avoid this, include relevant information such as timestamps, error messages, and command output in your log messages. For example: echo "$(date): Command output: $(command)" >> logfile.

# bash-script-tutorial

Bash scripts related to every session of this tutorial will be stored in isolated branches named after their session name.

## How to use

You can access the main code and the challenge answer key related to every session at their own branch.
