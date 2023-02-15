#!/bin/sh 
sudo apt-get -y install openjdk-8-jdk openjdk-8-jre
java -version
sudo sh -c 'echo "JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64" >> /etc/environment'
sudo sh -c 'echo "JRE_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre" >> /etc/environment'
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt -y install jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
sudo systemctl enable jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword