#!/bin/bash

# Tear down all existing services 
docker-compose down --rmi all;

# Rebuild the services
docker-compose up -d;

# TEMP: Change the permission for the local socket
sleep 5;
docker exec forceworkbench_web_1 sh -c "chmod 777 /tmp/heroku.fcgi.8080.sock"