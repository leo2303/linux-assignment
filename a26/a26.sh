#!/bin/bash
for dir in "$@"
do
	echo "In directory - $file"
	for file in "$dir"/*
	do
	  echo "$file"
	done
done

