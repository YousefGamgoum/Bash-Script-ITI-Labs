#! /bin/bash
read -p "Enter how many elements you want:  " size
Arr=()
for ((i=0; i<size; i++))
do
    read -p "Enter value of index $i:    " value
    Arr[i]=$value
done
echo "The array elements are: ${Arr[@]}"