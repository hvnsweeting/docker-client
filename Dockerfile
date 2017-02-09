FROM ubuntu:14.04
MAINTAINER Viet Hung Nguyen <hvn@familug.org>

RUN apt-get -qy update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*
RUN curl -LO https://get.docker.com/builds/Linux/x86_64/docker-1.13.1.tgz && tar docker-1.13.1.tgz && mv docker/docker /usr/bin/docker && rm -rf docker/
VOLUME ["/var/run/docker.sock"]
ENTRYPOINT ["docker info"]
