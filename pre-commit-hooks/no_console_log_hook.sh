#!/bin/bash

# This pre-commit hook checks for uncommented console.log statements in JavaScript files.

# Get the list of staged files
staged_files=$(git diff --cached --name-only --diff-filter=ACM | grep -E '\.js$')

# Check if there are staged JavaScript files
if [[ -z "$staged_files" ]]; then
    echo "No staged JavaScript files found."
    exit 0
fi

# Check each staged JavaScript file for uncommented console.log statements
for file in $staged_files; do
    if grep -q 'console\.log' "$file"; then
        echo "Error: Found uncommented console.log in $file"
        echo "Please remove or comment out console.log statements before committing."
        exit 1
    fi
done

exit 0
