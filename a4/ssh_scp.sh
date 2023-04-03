#!/bin/bash
printf "1 - ssh\n"
printf "2 - scp\n"
printf "Select an option to continue\n"
read option
case $option in
	1)
		printf "Please enter remote system ip address\n"
		read ip
		printf "Please enter the user name\n"
		read username
		ssh -p 22 $username@$ip
		;;
	2)
		printf "Please enter remote system ip address\n"
		read ip
		printf "Please enter the user name\n"
		read username
		printf "1 - local -> remote\n"
		printf "2 - remote -> local\n"
		printf "Please choose an option.\n"
		read option2
		case $option2 in
			1)
				printf "Please enter source file location\n"
				read sourceLoc
				printf "Please enter destination file location\n"
				read destLoc
				scp $sourceLoc $username@$ip:$destLoc
				;;
			2)
				printf "Please enter source file location\n"
				read sourceLoc
				printf "Please enter destination file location\n"
				read destLoc
				scp $username@$ip:$sourceLoc $destLoc
				;;
		esac
esac


