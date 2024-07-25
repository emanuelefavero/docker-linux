#!/bin/bash

# While Loop
i=1
while [ $i -le 3 ]; do
  echo $i
  i=$((i + 1))
done

# While Loop with (( ))
i=1
while ((i <= 3)); do
echo $i
i=$((i + 1))
done
