#!/bin/bash
if [ $1 -lt 10 ]
then
	echo "Error: pass a multi-digit number"
	exit
fi
num=$1
#if the last digits are 0
while [ `expr $num % 10` -eq 0 ]
do
	num=`expr $num / 10`
done

#reverse the digit
res=0
while [ $num -ne 0 ]
do
	mod=`expr $num % 10`
	num=`expr $num / 10`
	res=`expr $res \* 10`
	res=`expr $res + $mod`
done
echo $res

