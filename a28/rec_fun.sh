#!/bin/bash

rec() {	
	if [ $# -eq 0 ]
	then
		return 0
	else
		echo "$1"
		shift
		rec "$@"
	fi
}

rec $@
