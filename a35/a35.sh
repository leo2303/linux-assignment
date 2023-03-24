#!/bin/bash
lineCount=$(wc -l < "$1")
lineDeleteCount=$(echo "scale=0; $lineCount*0.2" | bc)

for i in {1..$lineDeleteCount}
do
	random=$((RANDOM % ($lineCount) + 1))
	sed "$random"d $1
	sed "$random"a "Delete" $1
done
