#! /bin/bash
user=`whoami`
mails="/var/mail/$user"
NumberOfRows=0
while true
do
    rows=`awk -v NOR="$NumberOfRows" '{
        if(NR>NOR){
            NOR=NR
        }
    }
    END{print NOR} ' $mails`
    if [ $rows -gt $NumberOfRows ]
    then
        NumberOfRows=$rows
        echo "You Have New Mails:   `date`"
    fi
sleep 10
done