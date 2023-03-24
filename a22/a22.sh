#!/bin/bash
echo "1 - Lower to Upper"
echo "2 - Upper to Lower"
echo "Please choose an option: "
read n
case $n in
	1)
		cat $1 | tr [:lower:] [:upper:] ;;
	2)
		cat $1 | tr [:upper:] [:lower:] ;;
esac

