#!/bin/bash

sudo docker build -t ququplay/mongodb ./mongo
sudo docker build -t ququplay/redis-server ./redis
sudo docker build -t ququplay/nodejs ./nodejs
