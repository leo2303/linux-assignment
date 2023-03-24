#!/bin/bash
#RE to filter the shorest 
cur=$(echo ${PWD##*/}) 
echo $cur
cd ..
mv $cur $1

