#!/bin/bash

# cd $PROJECT_DIR
# npm install && npm run dev

#docker run -d --rm --name node -p 3000:3000 -v /home/ec2-user/lab-codepipeline:/app node:latest

docker run --restart always -d -p 3000:3000  --name node  node:latest
