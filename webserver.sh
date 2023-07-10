#!/bin/bash

sudo docker build -t web-server .
sudo docker run -d -p 80:80 --restart=always --name web-server web-server
sudo docker cp ~/Desktop/liferay/index.html web-server:/usr/local/apache2/htdocs/index.html
sudo docker cp ~/Desktop/liferay/image.jpg web-server:/usr/local/apache2/htdocs/image.jpg
