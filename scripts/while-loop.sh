#!/bin/bash

# While Loop
count=1
while [ $count -le 3 ]; do
  echo $count
  count=$((count + 1))
done
