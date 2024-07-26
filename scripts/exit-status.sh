#!/bin/bash

# Exit status
# 0 - Success
# 1 - General error
# 2 - Misuse of shell builtins
# 126 - Command invoked cannot execute
# 127 - Command not found
# 128 - Invalid argument to exit
# 128+n - Fatal error signal "n"
# 130 - Script terminated by Control-C
# 255\* - Exit status out of range

# Example
echo "Hi"
echo "Exit status: $?" # Exit status: 0

# TIP: $? is a special variable that holds the exit status of the last command executed

if [ $? -eq 0 ]; then
  echo "Success"
else
  echo "Error"
fi

# TIP: You can invoke the exit command to set the exit status of the script
exit 0
