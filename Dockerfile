FROM node:latest

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD [ "node", "app.js" ]










FROM node:latest

RUN mkdir /app

ADD . /app

WORKDIR /app

COPY package*.json ./

RUN npm install 

COPY . /app 

EXPOSE 8080

CMD [ "node", "app.js" ]
