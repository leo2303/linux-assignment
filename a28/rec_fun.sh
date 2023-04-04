#!/bin/bash

rec() {	
	if [ $# -eq 0 ]
	then
		return 0
	else
		echo "$1"
		# remove one parameter each time
		shift 1
		# parse the reaming parameter to next time recursive
		rec "$@"
	fi
}

rec $@
