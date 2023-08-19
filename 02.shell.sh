#!/bin/bash/
set -e -x
if [ $# -ne 1 ]; then 
    echo "Please specify the filename: $0 "
    exit 1
fi

filename="$1"

if [ ! -f "$filename" ]; then
    echo "File '$filename' not found"
    exit 1
fi
read -p "Enter the old word to be replaced : " old
read -p "Enter the new word to be replaced : " new

sed -i "s|$old|$new|g" $filename