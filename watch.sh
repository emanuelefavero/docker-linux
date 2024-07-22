#!/bin/bash

# Path to the script you want to watch
WATCHED_FILE="./script.sh"

# Function to handle file changes
run_script() {
    echo "Change detected in $WATCHED_FILE. Running script..."
    bash "$WATCHED_FILE"
}

# Monitor the file for changes
inotifywait -m -e modify "$WATCHED_FILE" | while read; do
    run_script
done
