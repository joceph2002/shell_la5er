#!/bin/bash

#at library to schedule bash script 
#example: at 10:36 -f ./myshell.sh

lines=$(ls -lh $1 | wc -l)

echo "You have $(($lines-1)) object in the $1 Directory."















