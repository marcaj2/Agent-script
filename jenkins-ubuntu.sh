#!/bin/bash

#Author: Marc A
#Date: feb 2023
#Description: Installation of jenkins on ubuntu


# Update system
sudo apt-get update
##Install java
sudo apt-get install openjdk-11-jdk -y
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo apt-get update
sudo apt-get install jenkins -y
sudo apt install git -y
sudo systemctl start jenkins
sudo systemctl enable jenkins
  
*** Docker-install.sh

#!/bin/bash
# Created by Serge
# Install docker in centos

# Remove any old versions
sudo yum remove docker docker-common docker-selinux docker-engine

# Install required packages
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

# Configure docker repository
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker-ce
sudo yum install docker-ce -y

# Start Docker
sudo systemctl start docker
sudo systemctl enable docker

*** Git command history
  git status
   60  git add .
   61  git status
   62  git commit -m "agent script"
   63  git checkout -b agent
   64  git push origin agent
  git status
   83  git add .
   84  git commit -m " script modified"
   85  git push origin agent                            