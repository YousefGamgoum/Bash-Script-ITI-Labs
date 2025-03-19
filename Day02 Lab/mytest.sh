#! /usr/bin/bash
if [ -d $1 ]
then
    echo "dir"
elif [ -f $1 ]
then
    echo "file"
fi
if [ -r $1 ]
then
    echo "Readable"
fi
if [ -w $1 ]
then
    echo "Writable"
fi
if [ -x $1 ]
then
    echo "Excutable"
fi