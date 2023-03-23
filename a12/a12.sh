#!/bin/bash

for i in "$@"
do
	num[i]=$i
	echo "Length of string (${num[i]})    - ${#num[i]}"
done


