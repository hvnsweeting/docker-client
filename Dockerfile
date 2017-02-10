FROM ubuntu:14.04
MAINTAINER Viet Hung Nguyen <hvn@familug.org>
# Must mount docker socket /var/run/docker.sock to make it work, or use TCP instead

RUN python3 -c "import urllib.request; local_filename, _ = urllib.request.urlretrieve('https://get.docker.com/builds/Linux/x86_64/docker-1.13.1.tgz', '/tmp/docker.tgz')"
RUN tar xvf /tmp/docker.tgz && mv docker/docker /usr/bin/docker && rm -rf docker/
