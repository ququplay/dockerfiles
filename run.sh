#!/bin/bash

sudo docker run -p 127.0.0.1:27017:27017 -d ququplay/mongodb
sudo docker run -p 127.0.0.1:6379:6379 -d ququplay/redis-server