#!/bin/bash
# a +-*/ b
# $1 $2  $3
case $2 in
	#float number use bc
	+)
		echo "$1+$3" | bc
		;;
	-)
		echo "$1-$3" | bc
		;;
	x)
		echo "$1*$3" | bc
		;;
	/)
		echo "$1/$3" | bc
		;;
esac
