#! /bin/bash
user=`awk -F: '
{
    print $1
}
' /etc/passwd`
for user in $user
do
    mailx $user < ~/BashScripts/mtemplate
    echo mail sent to $user
done