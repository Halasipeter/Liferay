#!/bin/bash

docker build -t web-server .
docker run -d -p 80:80 --restart=always --name web-server web-server
