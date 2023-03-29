# Session17

## Challenge sixteen description

- Challenge 1:
  Replace all occurrences of the word "hello" with "hi" in a file named "input.txt" and save the modified file as "output.txt".

- Challenge 2:
  Remove all blank lines from a file named "input.txt" and save the modified file as "output.txt".

- Challenge 3:
  Replace all occurrences of the word "apple" with "orange" only on lines that start with the word "fruit" in a file named "input.txt" and save the modified file as "output.txt".

### Hints to remember

- **Not using the appropriate delimiters:** sed uses delimiters to separate the command and its arguments.
  By default, / is used as the delimiter, but you can use any character that is not present in the pattern or replacement.
  If your pattern or replacement contains the delimiter character, you need to escape it with a backslash (\).
  For example, to replace all occurrences of the string foo/bar with baz, you can use the command sed 's/foo\/bar/baz/g' file.txt.
  Make sure to use the appropriate delimiters and escape any delimiter characters in the pattern or replacement.

- **Using the wrong command or syntax:** sed has many commands and options that can be used to perform different tasks, and it's important to use the appropriate command or syntax for the task at hand.
  For example, if you want to delete a line that matches a pattern, you should use the d command. If you want to substitute a pattern with a replacement, you should use the s command.
  If you want to perform a substitution globally, you should use the g option. Make sure to read the man page (man sed) or the help documentation (sed --help) to understand all the available commands and options, and use the appropriate syntax for your task.

# bash-script-tutorial

Bash scripts related to every session of this tutorial will be stored in isolated branches named after their session name.

## How to use

You can access the main code and the challenge answer key related to every session at their own branch.
