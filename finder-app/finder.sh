#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Error: Two arguments required: <directory> <search-string>"
    exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d "$filesdir" ]; then
    echo "Error: $filesdir is not a valid directory."
    exit 1
fi

file_count=0
matching_lines=0

while IFS= read -r -d '' file; do
    file_count=$((file_count + 1))
    while IFS= read -r line; do
        if [[ "$line" == *"$searchstr"* ]]; then
            matching_lines=$((matching_lines + 1))
        fi
    done < "$file"
done < <(find "$filesdir" -type f -print0)

echo "The number of files are $file_count and the number of matching lines are $matching_lines"

exit 0
