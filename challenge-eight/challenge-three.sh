#!/bin/bash
max() {
  max=${1[0]}
  for i in ${1[@]}; do
    if [[ $i -gt $max ]]; then
      max=$i
    fi
  done
  echo $max
}
