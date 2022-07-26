#!/bin/bash
# Script to add a user to Linux system
if [ $(id -u) -eq 0 ]; then
	read -p "Enter username : " username
	read -s -p "please Enter password : " password
	egrep "^$username" /etc/passwd >/dev/null
	if [ $? -eq 0 ]; then
		echo "$username exists!"
		exit 1
	else
		pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
		useradd -m -p $pass $username
		[ $? -eq 0 ] && echo "User has been added to system!" || echo "Failed to add a user!"
	fi
else




	echo "Only root may add a user to the system, deuxieme changement par moi"
=======
<<<<<<< HEAD
	echo "Only root may add a user to the system, deuxieme changement par moi, feroiguejkidazhek"
>>>>>>> feature1
=======
	echo "Only root may add a user to the system,changement de fichier par moi"
>>>>>>> password_linux
	exit 2
fi
