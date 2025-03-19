#! /bin/bash
for df in `ls -a ~`
do
    if [ $df == "." -o $df == ".." ]
    then 
        echo ""
    else
        echo `chmod +x ~/$df`
    fi
done