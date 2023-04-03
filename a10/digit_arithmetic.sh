#!/bin/bash
str=$*
len=${#str}-1
for((i=0;i<$len;i++))
do
	num[i]=${str:i:1}
done

if [[ ${str:$len} != '+' ]] && [[ ${str:$len} != '-' ]] && [[ ${str:$len} != '*' ]] && [[ ${str:$len} != '/' ]]
then
	echo "Error: Operator missing"
	exit
fi

res=${num[0]}
case ${str:$len} in
	+)
		for((i=1;i<${#num[@]};i++))
		do
			res=`expr $res + ${num[i]}`
		done
		echo "Sum is $res"
		;;
	-)
		for((i=1;i<${#num[@]};i++))
		do
			res=`expr $res - ${num[i]}`
		done
		echo "Sub is $res"
		;;
	*)
		for((i=1;i<${#num[@]};i++))
		do
			res=`expr $res \* ${num[i]}`
		done
		echo "Mul is $res"
		;;
esac
