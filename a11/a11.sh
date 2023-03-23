#!/bin/bash
echo "Enter limit for fib series: "
read n
a=0
b=1

while (($a <= $n))
do
	echo "$a "
	c=`expr $a + $b `
	a=$b
	b=$fn
done


