FROM ubuntu:14.04

RUN apt-get -y update && apt-get -y install iptables

ADD https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64 /usr/local/bin/jq
RUN chmod +x /usr/local/bin/jq

ADD https://get.docker.io/builds/Linux/x86_64/docker-latest /usr/local/bin/docker
RUN chmod +x /usr/local/bin/docker

RUN /usr/local/bin/docker --version

RUN apt-get -y update && apt-get -y install ca-certificates

ADD assets/ /opt/resource/
RUN chmod +x /opt/resource/*
