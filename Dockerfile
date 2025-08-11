FROM node:18-alpine

WORKDIR /app

ENV TZ="Asia/Shanghai"

COPY package* .

RUN apk add --no-cache tzdata && \
npm ci
