FROM ubuntu:trusty
MAINTAINER tiryoh

RUN apt-get update -q && \
    apt-get upgrade -q && \
    apt-get install -yq wget curl git build-essential vim && \
    rm -rf /var/lib/apt/lists/*
RUN useradd -m -d /home/ubuntu ubuntu -p `perl -e 'print crypt("password", "salt"),"\n"'` && \
    echo "ubuntu ALL=(ALL) ALL" >> /etc/sudoers
USER ubuntu
WORKDIR /home/ubuntu
ENV HOME=/home/ubuntu
