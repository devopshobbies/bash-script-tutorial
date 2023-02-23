#!/bin/bash

#part 1
# This is a comment
echo "comments explains what's going on in your code
it improves readability, and specifies a block of code." > /dev/null # This is also a comment but not a good practice

: '
 this a multi-line comment
 you can comment multiple line of code or comment
 using this or <<whatever
 whatever is optional you can replace it with anything else but
 make sure you end it with the same word like the following line.
 whatever

'

#part 2
# creating a directory to store a multi-line script written using <<EOF
mkdir -p ~/test_challenge

cat <<EOF > ~/test_challenge/exit_code.sh
#/bin/bash
# making a directory in /boot and printing the exit code of this operation
mkdir -p /boot/got_denied_huh
echo $?
EOF

# making the file executable
chmod +x ~/test_challenge/exit_code.sh

#part3
# initializing a git directory
mkdir -p /tmp/git_dir
cd $_
git init > /dev/null 2> /dev/null
touch README.md
echo this is a README file > README.md
touch LICENSE
echo this an unvalid LICENSE file > LICENSE
git add . > /dev/null 2>&1
git commit -m "initial commit" &> /dev/null

# part4
# install Nginx and get the first 3 lines of its conf using pipes
sudo apt update &> /dev/null
sudo apt install -y nginx &> /dev/null
cat /etc/nginx/nginx.conf | head -n 3


