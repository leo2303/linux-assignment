#!/bin/bash
echo "Enter the width: "
read n
black='\e[1;40m'
white='\e[1;47m'
normal='\e[0m'
for((i=0;i<n;i++))
do
	for((j=0;j<n;j++))
	do
		if (( `expr \( $i + $j \) % 2` == 0 ))
		then
			#echo -n "black"
			echo -e -n "$black `printf " "` $normal"
		else
			#echo -n "white"
			echo -e -n "$white `printf " "` $normal"
		fi
	done
	printf "\n"
done
