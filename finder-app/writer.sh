#!/bin/bash


if [ "$#" -ne 2 ]; then
    echo "Error: Two arguments required: <file-path> <text-string>"
    exit 1
fi

writefile=$1
writestr=$2

dirpath=$(dirname "$writefile")
if [ ! -d "$dirpath" ]; then
    echo "Creating directory: $dirpath"
    mkdir -p "$dirpath"
    if [ $? -ne 0 ]; then
        echo "Error: Could not create directory $dirpath."
        exit 1
    fi
fi

echo "$writestr" > "$writefile"

if [ $? -ne 0 ]; then
    echo "Error: Could not create or write to file $writefile."
    exit 1
fi

exit 0
