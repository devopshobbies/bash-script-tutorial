#!/bin/bash

# Redirect stderr to a log file
exec 2>> error.log

# Throw an error
echo "This is an error" >&2