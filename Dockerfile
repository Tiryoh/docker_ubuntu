FROM ubuntu:xenial
MAINTAINER tiryoh

RUN apt-get update -q && \
    apt-get upgrade -yq && \
    apt-get install -yq wget curl git build-essential vim sudo lsb-release locales && \
    rm -rf /var/lib/apt/lists/*
RUN useradd -m -d /home/ubuntu ubuntu -p `perl -e 'print crypt("password", "salt"),"\n"'` && \
    echo "ubuntu ALL=(ALL) ALL" >> /etc/sudoers
RUN locale-gen en_US.UTF-8
USER ubuntu
WORKDIR /home/ubuntu
ENV HOME=/home/ubuntu
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
RUN git clone https://github.com/Tiryoh/oneliners.git && \
    git clone https://github.com/Tiryoh/dotfiles.git && \
    /bin/bash -c 'cd ${HOME}/dotfiles; git checkout -b dev/autobuild origin/dev/autobuild; make vim-setup_for_docker; make bash'

