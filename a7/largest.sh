#!/bin/bash
if [ $# -eq 0 ]
then
	echo "Error: No arguments passed"
	exit
fi
max=$1
for i in "$@";do
	if [ $i -ge $max ];then
		max=$i
	fi
done
echo "Largest value is $max"
