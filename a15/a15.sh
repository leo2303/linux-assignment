#!/bin/bash
while :
do
	echo "Sys Info Menu: "
	echo "1. Currently logged user"
	echo "2. Your shell directory"
	echo "3. Home directory"
	echo "4. OS name & version"
	echo "5. Current working directory"
	echo "6. Number of users logged in"
	echo "7. Show all available shells in your system"
	echo "8. Hard disk information"
	echo "9. Cpu information"
	echo "10. Memory information"
	echo "11. File system information"
	echo "12. Currently running process"
	echo "13. Exit"
	echo "Choose your option: "
	read n
	case $n in
		1)	echo $USER ;;
		2)	echo "${PWD}" ;;
		3)	echo $HOME ;;
		4)	grep '^VERSION' /etc/os-release | echo
			grep -E '^(VERSION|NAME)=' /etc/os-release | echo ;;
		5)	echo "${PWD}" ;;
		6)	who ;;
		7)	cat /etc/shells | echo ;;
		8)	lsblk ;;
		9)	lscpu ;;
		10)	free ;;
		11)	df -TH ;;
		12)	ps -ef ;;
		13)	break ;;
	esac
	echo "Continue(y/n)?"
	read c
	case $c in
		y)	continue ;;
		n)	break ;;
	esac
done	



