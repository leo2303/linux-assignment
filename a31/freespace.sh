#!/bin/bash
#get file system
info=$(df -k | awk '{print $1}')
name=($info)
info=$(df -k | awk '{print $5}')
avail=($info)
for((i=1;i<${#avail};i++))
do
	avail[$i]=${avail::-1}
	if (( ${avail[$i]} < 10 ))
	then
		echo "File System ${name[$i]} have less than 10% free space"
	fi
done
