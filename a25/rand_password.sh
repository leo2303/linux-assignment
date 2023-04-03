#!/bin/bash
for((i=0;i<8;i++))
do
	tr -dc 'A-Za-z0-9!!@#$%^&*()_{}:"|<>?,./' < /dev/urandom | head -c 8
	echo ""
done

