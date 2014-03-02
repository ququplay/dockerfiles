#!/bin/bash

sudo docker run -name mongodb -p 127.0.0.1:27017:27017 -v /mnt/db:/data/db -d ququplay/mongodb
sudo docker run -name redis -p 127.0.0.1:6379:6379 -v /mnt/redis:/redis-data -d ququplay/redis-server
sudo docker run -name nodejs -p 0.0.0.0:8080:8080 -link redis:redis -link mongodb:mongodb -v ~/www:/www ququplay/nodejs node /www/