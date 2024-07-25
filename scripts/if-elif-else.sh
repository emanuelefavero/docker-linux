#!/bin/bash

number=12

if [ $number -gt 10 ]; then
  echo "Number is greater than 10"
elif [ $number -eq 10 ]; then
  echo "Number is 10"
else
  echo "Number is less than 10"
fi

# TIP: Use -eq for numeric comparison, == for string comparison
# TIP: Use -gt for greater than, -lt for less than, -ge for greater than or equal to, -le for less than or equal to
