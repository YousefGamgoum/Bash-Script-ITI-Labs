#! /usr/bin/bash

echo Q1
awk '
BEGIN{FS=":"}
{
    print "Full Name:",$5   
}
END{}
' /etc/passwd
echo "=================================================================================="
echo Q2
awk '
BEGIN{FS=":"}
{
    print "Login Name:",$1",","Full Name:",$5",","Home Directory:",$6   
}
END{}
' /etc/passwd
echo "=================================================================================="
echo Q3
awk '
BEGIN{FS=":"}
{
    if($3>500){
        print "Login Name:",$1",","UID:",$3",","Full Name:",$5
    }
}
END{}
' /etc/passwd
echo "=================================================================================="
echo Q4
awk '
BEGIN{FS=":"}
{
    if($3==500){
        print "Login Name:",$1",","UID:",$3",","Full Name:",$5
    }
}
END{}
' /etc/passwd
echo "=================================================================================="
echo Q5
awk '
BEGIN{FS=":"}
{
    if(NR > 4 && NR < 16){
        print NR,$0
    }
}
END{}
' /etc/passwd
echo "=================================================================================="
echo Q6
awk '
BEGIN{FS=":"}
{
    gsub("lp","mylp",$0)
    print $0
}
END{}
' /etc/passwd
echo "=================================================================================="
echo Q7
awk '
BEGIN{FS=":";max=0;line=""}
{
    if($3 > max){
        max=$3
        line=$0
    }
}
END{print line}
' /etc/passwd
echo "=================================================================================="
echo Q8
awk '
BEGIN{FS=":";sum=0}
{
    sum += $3
}
END{print sum}
' /etc/passwd
echo "=================================================================================="
echo Bouns 1
awk '
BEGIN{FS=":"}
{
    G=$4
    sum=0
    if($4==G){
        sum = sum + $3
    }
    print "Group:",G",","Sum of IDs:",sum
}
END{}
' /etc/passwd
echo "=================================================================================="
echo Bouns 2
awk '
BEGIN{FS=":";print "User Group Report"; print "------------------"}
{  
    print "Name/",$1":"
    if($4){
        n = split($4,users,",")
        i = 1
        while(i <= n){
            print "     ",users[i]
            i++
        }
    }
}
END{}
' /etc/group

