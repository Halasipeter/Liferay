#!/bin/bash

sudo apt update
#Prequisites install
sudo apt install apt-transport-https ca-certificates curl software-properties-common
echo "Prequisites install is completted."

#GPG Key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

#Docker Repo to APT
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update

#auto-run docker on boot
apt-cache policy docker-ce

# Check if Docker is already installed
    echo "Installing Docker..."
    if ! sudo apt install -y docker.io; 
        then
            echo "Failed to install Docker!"
            exit 1
        fi
            echo "Docker installation completed"


sudo systemctl status docker

# Check if Docker Compose is already installed
    echo "Installing Docker Compose..."
    sudo apt update
    if ! sudo apt install -y docker-compose; 
        then
            echo "Failed to install Docker Compose!"
            exit 1
        fi
            echo "Docker Compose installation completed"

sudo apt update
echo "All installation have been completted"
