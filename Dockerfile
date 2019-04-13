FROM node:8-slim

COPY ./package*.json /

RUN npm install

COPY ./hello-microservice .

EXPOSE 3000

CMD [ "npm", "start" ]

