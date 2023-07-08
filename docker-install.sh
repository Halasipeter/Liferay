#!/bin/bash

#System up-to-date
sudo apt-get update

#Docker Prequisites
#Prequisites package maintained by Ubuntu Distribution
#sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
#GPG Key
#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
#Docker Repo to APT
#echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

#-------------------------------------------
# Docker Install / error-handling

    echo "Docker install is starting now!"
    if ! sudo apt install -y docker.io; 
        then
            echo "Failed to install Docker!"
            exit 1
        fi
            echo "Docker installation completed"

    sudo snap install docker

#docker to service
    sudo systemctl status docker

# Docker Compose Install / error-handling

    echo "Installing Docker Compose..."

    if ! sudo apt install -y docker-compose; 
        then
            echo "Failed to install Docker Compose!"
            exit 1
        fi
            echo "Docker Compose installation completed"

#Docker run without sudo
    sudo groupadd docker
    sudo usermod -aG docker $USER

#docker to service
apt-cache policy docker-ce


echo "All installation have been completted"
