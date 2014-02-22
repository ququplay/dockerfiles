#!/bin/bash

sudo docker run -name mongodb -p 127.0.0.1:27017:27017 -v /mnt/db:/data/db -d ququplay/mongodb
sudo docker run -name redis -p 127.0.0.1:6379:6379 -v /mnt/redis:/redis-data -d ququplay/redis-server
