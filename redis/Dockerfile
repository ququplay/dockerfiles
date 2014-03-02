FROM ubuntu:latest

MAINTAINER Ququplay <hi@ququplay.com>

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get -y update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-software-properties
RUN add-apt-repository -y ppa:rwky/redis
RUN apt-get update
RUN apt-get install -y redis-server
RUN mkdir -p /redis-data

EXPOSE 6379

ENTRYPOINT ["redis-server"]
CMD ["--dir", "/redis-data"]

