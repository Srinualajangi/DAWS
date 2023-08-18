#!/bin/bash/

if [ $# -ne 1 ]; then 
    echo "Please specify the filename: $0 "
    exit 1
fi

filename="$1"

if [ ! -f "$filename" ]; then
    echo "File '$filename' not found"
    exit 1
fi


cat "$filename" | tr -s '[:space:]' '\n' | tr '[:upper:]' '[:lower:]' | tr -d '[:punct:]' | sort | uniq -c | sort -nr