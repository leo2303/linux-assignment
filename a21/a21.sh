#!/bin/bash
time=$(echo $(date))
time=${time:11:2}
if [ $time -ge 5 -a $time -le 12 ]
then
	echo "Good morning"
elif [ $time -gt 12 -a $time -lt 13 ]
then
	echo "Good noon"
elif [ $time -ge 14 -a $time -le 17 ]
then
	echo "Good afternoon"
elif [ $time -gt 17 -a $time -lt 21 ]
then
	echo "Good evening"
elif [ $time -ge 21 -o $time -le 5 ]
then
	echo "Good night"
fi
