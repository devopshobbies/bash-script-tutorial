#!/bin/bash 
# This script demonstrates how to use grep with more complex regex patterns.

 # Create a sample file with some text. c
cat << EOF > sample.txt

The quick brown fox jumps over the lazy dog.
The lazy barks at the nooon.
The quick brown fox jumps over the lazy horse.
EOF

 # Search for lines that contain three consecutive vowels. 
 echo "Lines that contain three consecutive vowels:"
  grep -E '[aeiou]{3}' sample.txt 

 # Search for lines that contain a word that starts and ends with the same letter.
 echo "Lines that contain a word that starts and ends with the same letter:"
  grep -E '\b([a-zA-Z]).*\1\b' sample.txt 

  # Search for lines that contain a word with at least 5 characters, where the first and last characters are the same. 
  echo "Lines that contain a word with at least 5 characters, where the first and last characters are the same:" 
  grep -E '\b([a-zA-Z]).{3,}\1\b' sample.txt 

  # Remove the sample file.
  rm sample.txt