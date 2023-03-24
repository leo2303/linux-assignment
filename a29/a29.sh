#!/bin/bash
if mountpoint -q "$1"
then
	usage=$(df -k $1 | tail -1 | awk '{print $5}')
	avail=$(df -k $1 | tail -1 | awk '{print $4}')
	echo "File system $1 is $usage used with $avail KB free"
else
	echo "Error"
fi
