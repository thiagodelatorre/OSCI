#!/bin/bash

wget -q -O https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -

sudo echo "deb https://pkg.jenkins.io/debian-stable binary/" >> /etc/apt/sources.list

sudo apt-get update && sudo apt-get -y --allow-unauthenticated install jenkins

wget -c localhost:8080/login
sleep 10
wget -c localhost:8080/login

echo "Open Jenkins at localhost:8080 and use the following password to unlock it"
cat /var/lib/jenkins/secrets/initialAdminPassword
