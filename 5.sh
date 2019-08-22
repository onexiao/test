#!/bin/bash
x=`cat /opt/6.txt` 
a=$[RANDOM%100]
for b in $a
do
l5=`cat 5.txt|wc -l`
n5=$[RANDOM%l5+1]
l4=`cat 4.txt|wc -l`
n4=$[RANDOM%l4+1]
l3=`cat 3.txt|wc -l`
n3=$[RANDOM%l3+1]
let x++
if [ $a -eq 5 ];then
 sed -n "${n5}p" 5.txt
elif [ $a -gt 90 ];then
 sed -n "${n4}p" 4.txt
elif [ $a -ne 5 ] && [ $[$x%5] -eq 0 ];then
 sed -n "${n4}p" 4.txt
else
[ $[$x%34] -eq 0 ] && sed -n "${n5}p" 5.txt || sed -n "${n3}p" 3.txt
fi
echo $x > /opt/6.txt
done
