#!/bin/bash
yum install java-1.8.0-openjdk-devel -y
yum install wget -y
wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.io/redhat-stable/jenkins.repo --no-check-certificate
rpm --import http://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum install jenkins -y
systemctl start jenkins
systemctl status jenkins
sleep 10s
cat /var/lib/jenkins/secrets/initialAdminPassword
yum install maven -y
yum install unzip -y
wget https://chromedriver.storage.googleapis.com/92.0.4515.107/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
mv chromedriver /usr/bin/chromedriver
chromedriver –version
curl https://intoli.com/install-google-chrome.sh | bash
sudo curl https://intoli.com/install-google-chrome.sh
