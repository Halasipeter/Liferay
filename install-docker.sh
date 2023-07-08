#!/bin/bash

#APT Update
sudo apt update

#Docker Install
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


