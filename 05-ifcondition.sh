#!/bin/bash
echo "enter a value"
read a
echo "enter b value"
read b
if [ $a -gt $b ]; then
    echo "$a is gt $b"
else
    echo "$a is lt $b"
fi
