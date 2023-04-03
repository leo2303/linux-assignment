#!/bin/bash
echo "Enter the user you want to search "
read user
info=$( awk -F ':' '{print $1}' /etc/passwd )
name=($info)
for i in "${name[@]}"
do
	if [ $i == $user ]
	then
		echo "$user is present"
	else
		echo "$user is not present"
	fi
	break
done

