#!/bin/bash
echo "Enter limit for fib series: "
read n
a=0
b=1
while :
do
	f=`expr $a + $b`
	a=$b
	b=$f
	if [ $b -ge $n ]
	then
		echo "Greatest val = $a"
		break
	fi
done
