#!/bin/bash
# Author: Ryan Drew
# Date: 9/19/19

# Prompt user to input filename and regex expression
echo "Please enter a filename and a regex expression: "
read fn rex

echo "Searching for '$rex' in '$fn'
grep $rex $fn

