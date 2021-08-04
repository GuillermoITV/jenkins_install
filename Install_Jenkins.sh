#!/bin/bash
yum install java-1.8.0-openjdk-devel -y
yum install wget -y
wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import http://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum install jenkins -y
systemctl start jenkins
systemctl status jenkins
sleep 20s
cat /var/lib/jenkins/secrets/initialAdminPassword
