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
read -p "Enter Word or phrase to be replaced: " R
read -p "Enter new word for replacement: " N

sed -i 's/$R/$N/g' $filename