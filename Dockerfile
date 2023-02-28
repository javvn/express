FROM node:16-alpine

MAINTAINER jawn <javvn4@gmail.com>

RUN mkdir -p /app

WORKDIR /app

ADD . /app

RUN npm install

ENV NODE_ENV dev

EXPOSE 3000

CMD ["npm", "run", "dev"]