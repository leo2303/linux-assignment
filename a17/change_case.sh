#!/bin/bash
rename=$(echo "$1" | tr [a-zA-Z] [A-Za-z])
echo $rename
mv $1 $rename
