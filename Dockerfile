FROM node:8.15.1-alpine

RUN apk add --no-cache bash

WORKDIR /usr/src/app/

RUN mkdir src
COPY package.json ./
RUN npm install

ENV PORT 80

CMD ["npm", "start"]
