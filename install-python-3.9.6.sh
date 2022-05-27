#!/bin/bash

#this updates the OS and asks for the first sudo credentials.
sudo apt update && sudo apt upgrade -y

#this installs needed libraries to the OS. (tested and Working on Ubuntu 20.04.4 LTS)
sudo apt install wget build-essential libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev -y

#this creates a folder on the current directory and then change directory to it
mkdir psource
cd psource

#this downloads the compressed source code of python 3-9-6 version 
wget https://www.python.org/ftp/python/3.9.6/Python-3.9.6.tgz 

#uncompress file / change directory to Python-3.9.6
tar xzf Python-3.9.6.tgz
cd Python-3.9.6 

#this will configure and enable optimizations
./configure --enable-optimizations 

#this will install python 3.9.6 from our source. needs sudo.
sudo make altinstall 

#this will install pip
sudo apt install python3-pip

#this will install the azureCLI enviroment
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

#this will go back to home directory
cd $HOME
