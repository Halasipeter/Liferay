#!/bin/bash

#APT Update

sudo apt update

#Prequisites for docker
#----------------------------------------------
#Install from APT repo

sudo apt-get install ca-certificates curl gnupg

#Docker's official GPG key

sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

#Repository Set-Up
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "All prequisites have been installed"

#Prequisite install completted------------------

#APT package update
sudo apt-get update

#Docker & Docker-Compose Install
echo "Docker install is starting now!"
    if ! sudo apt install -y docker.io docker-compose-plugin; 
        then
            echo "Failed to install Docker and Docker-Compose Plugin!"
            exit 1
        fi
            echo "Installation completed."

#Docker service start
sudo systemctl start docker
#docker to start with system boot
sudo systemctl enable docker



