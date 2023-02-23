# Session4

## Challenge three description

1. echo the usage of comments and try using a multi-line comment

2. inside your main script write another script named exit_code.sh to do an optional task using  <<EOF 
2.2 then make the file executable. Ensure that each part is spectified 

3. install Nginx and get the first 3 lines of its conf using pipes.

4. initialize a git directory somewhere in your system and add READ + LICENSE then use `git add .` .
finally, commit them using `commit -m " initail commit"` . (optional)
- You can certainly play with the output (redirection) of each command if needed :)

### Hints to remember
- `cmd &> /dev/null`, `cmd > /dev/null 2>&1` and `cmd > /dev/null 2> /dev/null` are identical.

- `2>&1` is considered and read from **right to left** not left to right 

- if the return (exit) code of an operation is non-zere it has failed otherwise, it's been successful. 

- you can use <<EOF with pipe as well.
# bash-script-tutorial
Bash scripts related to every session of this tutorial will be stored in isolated branches named after their session name. 
## How to use 
You can access the main code and the challenge answer key related to every session at their own branch. 

