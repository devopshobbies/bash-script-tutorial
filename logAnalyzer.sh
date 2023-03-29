#!/bin/bash

# Define the log file to analyze
LOGFILE="sample-files/access.log"

# Use Awk to find the most requested URL
echo "Most requested URL:"
awk '{print $7}' "$LOGFILE" | sort | uniq -c | sort -rn | awk '{print $2}' | head -n 1

# Use Awk to find the average request time
echo "Average request time:"
awk '{sum += $10} END {print sum/NR}' "$LOGFILE"
