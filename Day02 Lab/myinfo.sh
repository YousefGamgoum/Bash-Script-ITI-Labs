#! /usr/bin/bash
echo "Enter your Login name:"
read name
ls -l /home/$name
mkdir /tmp/$name
cp -r /home/$name/ /tmp/$name/
echo -e "\nProcesses Status\n"
ps -f -u $name