#!/bin/bash
IFS=':' read -ra arr <<< "$PATH"
for d in "${arr[@]}"
do
	filenames=$(ls -l)
	IFS=$'\n' read -d '' -r -a nameArr <<< "$d"
	count=0
	for file in "${nameArr[@]}"
	do
		if [ -x $file ]
		then
			count=`expr $count + 1`
		fi
	done
	echo "Current dir: $d: "
	echo "Count: $count"
done
