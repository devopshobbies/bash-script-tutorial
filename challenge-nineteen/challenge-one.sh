#!/bin/bash

# Get the date and time
timestamp=$(date +"%Y-%m-%d %T")

# Append to the log file
echo "$timestamp - Script executed" >> script.log