#!/bin/bash
# Author: Ryan Drew
# Date: 09-19-19
# Script follows here:
echo "Enter two numbers separated by a space: "
read numOne numTwo
sum=$(($numOne + $numTwo))
echo "The sum is: $sum"
let prod=numOne*numTwo
echo "The product is: $prod"

echo "File Name: $0"
echo "Command Line Argument 1: $1"
echo "Command Line Argument 2: $2"
echo "Hey I also call grep!"
grep $1 $2
