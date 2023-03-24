#!/bin/bash
filenames=$(ls)
index=0
for file in $filenames
do
	mv $file "$1$index"
done
