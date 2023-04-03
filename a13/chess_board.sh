#!/bin/bash
echo "Enter the width: "
read n
for((i=0;i<n;i++))
do
	for((j=0;j<n;j++))
	do
		if (( `expr $j % 2` == 0 ))
		then
			echo -e -n "\\\\e[40m"""
		else
			echo -e -n "\\\\e[47m"""
		fi
	done
	printf "\n"
done
