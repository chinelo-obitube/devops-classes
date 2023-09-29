#!/bin/bash 

# fail on any error
set -eu

# build docker image
sudo docker build -t flask-app .

# login to your docker hub account
cat ~/my_password.txt | sudo docker login --username wseyi --password-stdin

# use the docker tag command to give the image a new name
sudo docker tag flask-app wseyi/flaskapp

# push the image to docker hub
sudo docker push wseyi/flaskapp

# start the container
sudo docker run -d --name flaskapp -p 8000:5000 wseyi/flaskapp
