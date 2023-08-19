#!/bin/bash
set -e -x
read -p "Enter a string to check: " $string
reversed_input=$(echo "$string" | rev)

if [ "$string" == "$reversed_input" ]; then
    echo "Palindrome"
else
    echo "Given string is not a Palindrome"
fi
