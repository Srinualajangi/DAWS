#!/bin/bash

read -p "Enter a string to check" $string
if [ [ $string|rev == $string ] ]; then
    echo "Palindrome"
    else
    echo "Given string is not a Palindrome"
fi
