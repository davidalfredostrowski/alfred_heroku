FROM node:latest

RUN mkdir /app

ADD . /app

WORKDIR /app

COPY package*.json ./

RUN npm install 

COPY . /app 

EXPOSE 8080

CMD [ "node", "index.js" ]
