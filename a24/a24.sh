#!/bin/bash
files=$(find / -name "*.swp")
arr=($files)
for i in ${arr[@]}
do
	echo "swp file found: $i"
	rm -rf $i
done


