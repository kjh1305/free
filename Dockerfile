# 1. Node.js 환경 이미지를 기반으로 빌드
FROM node:16-alpine AS builder

WORKDIR /app
COPY package*.json ./
RUN npm install --legacy-peer-deps
COPY . .
RUN npm run build
