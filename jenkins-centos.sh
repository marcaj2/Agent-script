#!/bin/bash

#Author:Marc A
#Date: feb 2023
#Script to install Jenkins on Centos7


1-#Jenkins is a Java application, so the first step is to install Java.
  #Run the following command to install the OpenJDK 8 package:

$ sudo yum install java-1.8.0-openjdk-devel

 #The current version of Jenkins does not support Java 10 (and Java 11) yet. If you have multiple
 #multiple versions of Java installed on your machine make sure Java 8 is the default Java version .

2#The next step is to enable the Jenkins repository. To do that,
 #import the GPG key using the following curl command:

$ curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo

#And add the repository to your system with:

$ sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

3-#Once the repository is enabled, install the latest stable version of Jenkins by typing:

$ sudo yum install jenkins

 #After the installation process is completed, start the Jenkins service with:

$ sudo systemctl start jenkins
 
#To check whether it started successfully run:

$ To check whether it started successfully run:

#You should see something similar to this:

#● jenkins.service - LSB: Jenkins Automation Server
Loaded: loaded (/etc/rc.d/init.d/jenkins; bad; vendor preset: disabled)
Active: active (running) since Thu 2018-09-20 14:58:21 UTC; 15s ago
    Docs: man:systemd-sysv-generator(8)
Process: 2367 ExecStart=/etc/rc.d/init.d/jenkins start (code=exited, status=0/SUCCESS)
CGroup: /system.slice/jenkins.service

#Finally enable the Jenkins service to start on system boot.

$ sudo systemctl enable jenkins

#Adjust the Firewall
If you are installing Jenkins on a remote CentOS server that is protected by a firewall you need to port 8080.

Use the following commands to open the necessary port:

$ sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp
$sudo firewall-cmd --reload

#Setting Up Jenkins
#To set up your new Jenkins installation, open your browser and type your domain or IP address followed by port 8080:

$ http://your_ip_or_domain:8080

#A screen similar to the following will appear, prompting you to enter the Administrator password
 that is created during the installation: {TO UNLOCK JENKINS}

#Use the following command to print the password on your terminal:

$ sudo cat /var/lib/jenkins/secrets/initialAdminPassword

#You should see a 32-character long alphanumeric password as shown below:
#2115173b548f4e99a203ee99a8732a32

#Copy the password from your terminal, paste it into the 
#Administrator password field and click Continue.

#On the next screen, you will be asked whether you want to install the suggested plugins or to select specific plugins.
# Click on the Install suggested plugins box, and the installation process will start immedia

