#!/bin/bash

file_report() {
    local filename=$1

    if [ ! -e "$filename" ]; then
        echo "Error: '$filename' does not exist."
        return 1
    fi

    echo "Report for: $filename"
    echo "Size: $(du -h "$filename" | cut -f1)"
    echo "Permissions: $(stat -c '%A' "$filename")"
    echo "Owner: $(stat -c '%U' "$filename")"
    return 0
}

file_report "$1"
