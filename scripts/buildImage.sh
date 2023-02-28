#!/bin/bash

PROJECT_DIR="/home/ec2-user/lab-codepipeline"
cd $PROJECT_DIR

#docker build -f /home/ec2-user/lab-codepipeline/Dockerfile . -t node:latest

docker build -t node:latest .
