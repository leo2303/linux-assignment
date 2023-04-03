#!/bin/bash
info=$( awk -F ':' '{print $3}' /etc/passwd )
num=($info)
count=0
for i in "${num[@]}"
do
	if [ $i -ge 500 -a $i -le 10000 ]
	then
		count=`expr $count + 1`
	fi
done
echo "Total count of user ID between 500 to 10000 is $count"


