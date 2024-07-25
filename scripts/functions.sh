#!/bin/bash

# Define a function
greet() {
  echo "Hello $1, you are $2 years old"
}


# Call the function
greet "John" 35

# Call the function with variables
name="Alice"
age=25
greet $name $age

# TIP: In bash, paramters are accessed using $1, $2, $3, etc. and are not palced inside the parentheses
