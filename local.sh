#!/bin/bash

docker-compose down --rmi all;
docker-compose up -d;
sleep 10; 
docker exec forceworkbench_web_1 sh -c "chmod 777 /tmp/heroku.fcgi.8080.sock"