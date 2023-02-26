#!/bin/bash

#part 1
read -p "What's your Major? (e.g Engineering) " MAJOR

read -p "How old are you? " AGE

#part 2 & 3
# always check the negative case, since it reduces the number of conditions 
if [ "$AGE" -lt 18 ]; then
    echo "Sorry, you are not old enough!" >&2
    exit 1
elif [ "$MAJOR" != "Engineering" ]; then
    echo "You have to study Engineering to be part of us, it doesn't seem so :))" >&2
    exit 1
else
    echo "You can take part for sure!"
    exit 0
fi
