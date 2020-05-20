#!/bin/bash

sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
echo "sleeping"
sleep 8s
sudo yum install jenkins -y

sudo service jenkins start

sudo systemctl enable jenkins

sudo service jenkins status
sleep 3s
echo "sleeping 3 seconds"

echo "paste ip:8080 and  copy the inital password on the server"


cat /var/lib/jenkins/secrets/initialAdminPassword
