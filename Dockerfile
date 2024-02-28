FROM node:18-alpine AS base

WORKDIR /app1

COPY package.json ./

RUN npm install

EXPOSE 5173

CMD npm run dev
