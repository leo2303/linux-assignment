#!/bin/bash
echo "Enter limit for fib series: "
read n
a=0
b=1

while [ $a -le $n ]
do
	printf "$a "
	fn=` expr $a + $b `
	a=$b
	b=$fn
done
echo ""


