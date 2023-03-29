#!/bin/bash

# This script demonstrates how to use grep with regex and extended regex.

# Create a sample file with some text.
cat << EOF > sample.txt
The quick brown fox jumps over the lazy dog
The o lazy dog barks at the moon.
the tired sheep flees
EOF

# Search for lines that start with "The".
echo "Lines that start with 'The':"
grep -n '^The' sample.txt

# Search for lines that end with "dog".
echo "Lines that end with 'dog':"
grep -E 'dog$' sample.txt

# Search for lines that contain "the" (case-insensitive).
echo "Lines that contain 'the' (case-insensitive):"
grep -in 'the' sample.txt

# Search for lines that contain "fox" or "moon".
echo "Lines that contain 'fox' or 'moon':"
grep -E 'fox|moon' sample.txt

# Search for lines that contain "o" followed by any number of characters, followed by "dog".
echo "Lines that contain 'o' followed by any number of characters, followed by 'dog' and only show the matching parts:"
grep -o 'o.*.dog' sample.txt

# Search for lines that contain apple and display 2 lines after the match.
# Also, -B is used to display a number of lines before the match.
grep -A 2 "apple" file.txt

grep -c "apple" file.txt.
# Remove the sample file.
rm sample.txt