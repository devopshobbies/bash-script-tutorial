# Define a function that takes a string as an argument and replaces all occurrences of "a" with "b"
get_file_size() {
  wc -c < "$1"
}

get_current_datetime() {
  date +"%Y-%m-%d %H:%M:%S"
}

file_exists() {
  if [[ -e "$1" ]]; then
    return 0
  else
    return 1
  fi
}

command_exists() {
  command -v "$1" >/dev/null 2>&1
}

get_file_size() {
  wc -c < "$1"
}

# Call the function with a filename
print_file_contents "example.txt"


# Define a function that returns the sum of two numbers
addition() {
  sum=$(($1 + $2))
  echo "The sum of $1 and $2 is $sum"
}

# Call the function with two arguments
addition 5 10

