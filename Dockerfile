FROM node:8-slim

COPY ./hello-microservice/package*.json /

RUN npm install

COPY ./hello-microservice .

EXPOSE 3000

CMD [ "npm", "start" ]

