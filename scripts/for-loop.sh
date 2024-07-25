#!/bin/bash

# For Loop
for i in 1 2 3; do
  echo "Hello $i"
done

# For Loop with Range
for i in {1..3}; do
  echo "Ciao $i"
done

# For Loop with length variable
length=3
for (( i=1; i<=$length; i++ )); do
  echo "Hola $i"
done
