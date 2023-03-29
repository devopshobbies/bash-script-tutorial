#!/bin/bash -xv

LOG_FILE="/var/log/to_log.log"

# echo "Starting script..." >> $LOG_FILE

# # Your script logic here

# echo "Script completed." >> $LOG_FILE


# custom functions

function to_log() {
    local LOG_LEVEL=$1
    shift 1
    local MESSAGE=$@
    TIMESTAMP=$(date +'%Y-%m-%d %T') 
    HOST=$(hostname) 
    echo "${TIMESTAMP} ${HOST}[$$] $LOG_LEVEL $MSG" >> "$LOG_FILE"
}

to_log INFO "this is an info log" 
cat $LOG_FILE