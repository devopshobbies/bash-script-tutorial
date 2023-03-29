# Session14

## Challenge thirteen description

1. Prompt the user to enter the type of file they have (e.g. jpg, png, txt).
2. Loop through all files in the current directory with the specified file type.
3. Prompt the user to choose the operation they want to perform on each file - copy or move.
4. If the user chooses to move the file, prompt them to confirm if they really want to move the file.
5. If the user confirms, create a new directory with the name of the file type if it doesn't exist already.
6. Move the file to the directory.
7. If the user chooses to copy the file, create a new directory with the name of the file type if it doesn't exist already.
8. Copy the file to the directory.
9. If the user chooses anything other than "yes" or "y" to confirm the operation, exit the script with an error code.
10. After all files are processed, exit the script with a success code.

### Hints to remember

- When using wildcards such as \* or ? in a Bash command, it's important to properly quote or escape them. Otherwise, the shell may interpret the wildcards as file globbing patterns and expand them into a list of file names before executing the command. This can lead to unexpected behavior if the command is not designed to handle multiple file names as arguments. To prevent the shell from expanding the wildcards, you can use quotes (" or ') or escape characters (\) to surround the wildcard pattern.

- When using wildcards with root privileges, such as with the rm command, it's important to be very careful.
  A single mistake with a wildcard can lead to the deletion of multiple files or even the entire file system.
  To avoid accidentally deleting important files, it's a good idea to use the -i option with the rm command to prompt for confirmation before deleting each file.
  Additionally, you can use the -- option to signify the end of options and prevent any arguments that follow from being interpreted as options.
  This can help prevent accidental deletion of files that have names starting with a hyphen (-).

# bash-script-tutorial

Bash scripts related to every session of this tutorial will be stored in isolated branches named after their session name.

## How to use

You can access the main code and the challenge answer key related to every session at their own branch.
