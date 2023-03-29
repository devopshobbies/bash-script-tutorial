#!/bin/bash

: '
# Where the error roots (root cause).
Facility : kern, user, daemon, mail, auth, local0, local7

# How sever and critical it is.
Severities : emerg, alert , err , etc . info,debug

Where are logs located ?!
  /var/log/messages
  /var/log/syslog
'

logger -p user.info "message to be logged"

# # -i for PID -t for TAG
 logger -i -t to_log -p user.info "message to be logged"

# -s for displaying the output while writing into syslog
logger -s -i -t to_log -p user.info "${BOLD}message to be logged"


function to_log() {
    local FACILITY=$1
    local LOG_LEVEL=$2
    shift 2
    local MSG=$@
    logger -s -i -t to_log -p ${FACILITY}.${LOG_LEVEL} $MSG
}

to_log user INFO "this is a message to be logged"

cat /var/log/syslog | grep to_log