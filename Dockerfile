FROM node:15.6.0-alpine3.12
WORKDIR /usr/local/src/express

COPY package.json ./
COPY package-lock.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "node", "index.js" ]