#!/bin/sh
git clone https://github.com/anderson1096/hello-microservice.git
cd hello-microservice/
npm install
cd ..
docker build -t co.edu.utp.microservice/node-microservice .
docker rm -f node-microservice || true && docker run -p 8080:3000 -d --name node-microservice co.edu.utp.microservice/node-microservice
