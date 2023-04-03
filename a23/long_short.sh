#!/bin/bash
username=$(cut -d: -f1 < /etc/passwd)
arr=($username)
max=${#arr[0]}
maxName=${arr[0]}
min=${#arr[0]}
minName=${arr[0]}
for i in ${arr[@]}
do
	if [ ${#i} -gt $max ]
	then
		max=${#i}
		maxName=$i
	fi
	if [ ${#i} -lt $min ]
	then
		min=${#i}
		minName=$i
	fi
done
echo "The longest name is: $maxName" 
echo "The shortest name is: $minName"

