FROM node:18-alpine

WORKDIR /app

ENV TZ="Asia/Shanghai"

COPY package* .

RUN apk add --no-cache tzdata \
tzdata \
icu-libs \
icu-data-full \
font-noto \
font-noto-cjk \
font-noto-extra \
font-noto-emoji \
fontconfig && \
npm ci
