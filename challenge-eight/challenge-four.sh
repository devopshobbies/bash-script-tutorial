#!/bin/bash

list_files() {
  for file in $1/*; do
    echo $file
    if [[ -d $file ]]; then
      list_files $file
    fi
  done
}


