FROM node:18

WORKDIR /app

ENV TZ="Asia/Shanghai"

COPY package* .

RUN npm ci
