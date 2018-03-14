#!/bin/bash

sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce


deb https://download.webmin.com/download/repository sarge contrib
wget http://www.webmin.com/jcameron-key.asc
apt-key add jcameron-key.asc

apt-get install apt-transport-https
apt-get update
apt-get install webmin
