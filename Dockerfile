FROM node:18-alpine AS base

WORKDIR /app

COPY package.json ./

RUN npm install

EXPOSE 3000

CMD npm run dev
