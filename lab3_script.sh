#!/bin/bash
# Author: Ryan Drew
# Date: 9/19/19

rp=regex_practice.txt
# Prompt user to input filename and regex expression
echo "Please enter a filename and a regex expression: "
read fn rex

echo "Searching for '$rex' in '$fn'"
grep $rex $fn

echo "In regex_practice.txt: "
echo "There are $(grep -c '\d\{3\}\-\d\{3\}\-\d\{4\}' $rp) phone numbers"

echo "There are $(grep -c .*\@.* $rp) emails"

echo "Here are the phone numbers in the 303 area code: "
grep '303\-\d\{3\}\-\d\{4\}' $rp

echo "Storing the list of emails from geocities.com into email_results.txt"
grep '\@geocities.com' $rp > email_results.txt
echo "Adding this file to the github repository"
git add email_results.txt
echo "Commiting this file to the repository"
git commit -m "This is a default message"
echo "Pushing to the repo"
git push origin master


