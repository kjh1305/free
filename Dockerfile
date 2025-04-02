# 1. Node.js 환경 이미지를 기반으로 빌드
FROM node:16-alpine AS builder

WORKDIR /app
COPY package*.json ./
RUN yarn install
COPY . .
RUN yarn build

FROM alpine:latest

VOLUME /app/dist

COPY --from=builder /app/dist /app/dist