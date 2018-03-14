#!/bin/bash

sudo apt-get update
sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get -y install docker-ce cifs-utils

sudo curl -L https://github.com/docker/compose/releases/download/1.19.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

sudo echo "deb https://download.webmin.com/download/repository sarge contrib" >> /etc/apt/sources.list
wget http://www.webmin.com/jcameron-key.asc
sudo apt-key add jcameron-key.asc

sudo apt-get -y install apt-transport-https mlocate
sudo apt-get update
sudo apt-get -y install webmin

sudo mkdir -p /srv/docker/system
sudo mkdir -p /srv/docker/services
sudo mkdir -p /srv/docker/sites



