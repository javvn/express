#!/bin/bash
PROJECT_DIR="/home/ec2-user/lab-codepipeline"

# shellcheck disable=SC2046
docker stop $(docker ps -q) && docker rm $(docker ps -a -q) && docker rmi prune

if [ -d $PROJECT_DIR ]; then
    echo "existed directory."
    echo "deleting directory..."
    sudo rm -rf $PROJECT_DIR

    if [ $? -eq 0 ]; then
      echo "deleted directory"
      mkdir $PROJECT_DIR
    fi
  else
    mkdir $PROJECT_DIR
fi

# shellcheck disable=SC2164
cd /home/ec2-user
echo "hello" >> hello.text

