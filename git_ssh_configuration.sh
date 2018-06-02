#!/bin/bash
sudo apt update
sudo apt install git
sudo apt install xclip
echo "Insert your email"
read email
echo "Confirm your email: $email (Y/N)"
read id
if [ "$id" == "Y" || "$id" == "y" ];
then
	echo "$id"	
elif [ "$id" == "N" || "$id" == "n" ];
then
	echo "Insert your email"
	read email
	echo "Confirm your email: $email (S/N)"
	read id
fi
ssh-keygen -t rsa -b 4096 -C "$email"
ssh -add ~/.ssh/id_rsa
xclip -sel clip < ~/.ssh/id_rsa.pub
echo "Done!"
