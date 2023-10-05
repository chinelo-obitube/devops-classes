#!/bin/bash 

# fail on any error
set -eu

# build docker image
sudo docker build -t flask-app .
