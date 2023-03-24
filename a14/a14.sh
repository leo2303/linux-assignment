#!/bin/bash
for i in "$@"
do
	num[i]=$i
done
echo "1. Ascending"
echo "2. Descending"
echo "Please select an option: "
read n
case $n in
	1)
		printf "Sorted array is "
		for i in ${num[@]}
		do
			printf "$i "
		done | sort -r
		;;
	2)
		for (( i=0; i<${#num[@]};i++ )) 
		do
    			for (( j=0 ; j < ${#num[@]}; j++ )) 
    				do
      				if [[ ${num[$j]} -lt  ${num[$i]} ]]
      				then
        				tmp=${num[$i]}
        				num[$i]=${num[$j]}
        				num[$j]=${tmp}
      				fi
    			done
		done
		printf "Sorted array is "
		for i in ${num[@]}
		do
			printf "$i "
		done
		
esac



