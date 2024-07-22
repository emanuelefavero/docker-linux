#!/bin/bash

# Startup message
echo "File: script.sh"
echo "Watching for changes..."

# Watch for changes in the current directory and subdirectories
fswatch -o ./script.sh | while read; do
    docker-compose up --build
done
