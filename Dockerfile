FROM node:latest

WORKDIR /app

COPY package.json /app
COPY ./server /app

RUN npm install

EXPOSE 4000

CMD ["node","/app/app.js"]
