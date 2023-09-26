#!/bin/bash 

# fail on any error
set -eu 

# login to your docker hub account
cat ~/my_password.txt | sudo docker login --username wseyi --password-

# use the docker tag command to give the image a new name
sudo docker tag flask-app wseyi/flaskapp

# push the image to docker hub
sudo docker push wseyi/flaskapp
