#! /usr/bin/bash
if [ $# -eq 0 ]
then
    ls
elif [[ $# == 1 ]]
then
        ls $1
else
    if [[ $1 =~ ^- ]]
    then
        ls $1 $2
    else
        ls $2 $1
    fi
fi
