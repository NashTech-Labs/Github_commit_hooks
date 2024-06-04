#!/bin/sh

# List of files to check
FILES=$(git diff --cached --name-only --diff-filter=ACM | grep '\.js$')

if [ "$FILES"!= "" ]; then
    echo "Running ESLint..."
    OUTPUT=$(eslint $FILES)

    if [ $? -ne 0 ]; then
        echo "ESLint found errors:"
        echo "$OUTPUT"
        exit 1
    fi
fi

exit 0
