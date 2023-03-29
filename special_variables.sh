#!/bin/bash -xve

# change the default error message format
PS4='+${BASH_SOURCE}: on line ${LINENO}: ${FUNCNAME[0]}: '

debug() {
  echo "executing: $@"
  "$@"
}

debug ls

