#! /bin/bash
read -p "Enter how many elements you want:  " size
Arr=()
sum=0
for ((i=0; i<size; i++))
do
    read -p "Enter value for element $i: " value
    let sum+=$value
done
let avg=$sum/$size
echo "Array number average is :  $avg"