#!/bin/bash
sudo apt update
sudo apt install git
sudo apt install xclip
read email
ssh -keygen -t rsa -b 4096 -C " $email "
ssh -add ~/.ssh/id_rsa
xclip -sel clip < ~/.ssh/id_rsa.pub
