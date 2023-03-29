#!/bin/bash


# Get current date and time
DATETIME=$(date +"%Y-%m-%d %H:%M:%S")

# Get the username of the user running the script
USERNAME=$(whoami)

# Log message to syslog with logger command
logger -p local0.notice -t myscript "[$DATETIME] User $USERNAME: Script executed successfully"
