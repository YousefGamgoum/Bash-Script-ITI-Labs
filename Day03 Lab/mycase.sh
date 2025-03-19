#! /bin/bash
read -p "Enter a character:     " char
case $char in
[a-z]*)
    echo "Lower case"
;;
[A-Z]*)
    echo "Upper case"
;;
[0-9]*)
    echo "Number"
;;
*)
    echo "Nothing"
;;
esac
read -p "Enter a string:     " word
if [[ -z $word ]]
then
    echo "nothing"
elif [[ $word =~ ^[a-z]+$ ]]
then
    echo "Lower case"
elif [[ $word =~ ^[A-Z]+$ ]]
then
    echo "Upper case"
elif [[ $word =~    ^[0-9]+$ ]]
then
    echo "Number"
else
    echo "Mix"
fi