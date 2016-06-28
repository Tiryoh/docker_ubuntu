FROM ubuntu:trusty
MAINTAINER tiryoh

RUN apt-get update -q && \
    apt-get install -yq wget curl git make vim && \
    rm -rf /var/lib/apt/lists/*
RUN useradd -m -d /home/ubuntu ubuntu -p `perl -e 'print crypt("password", "salt"),"\n"'` && \
    echo "ubuntu ALL=(ALL) ALL" >> /etc/sudoers
USER ubuntu
WORKDIR /home/ubuntu
ENV HOME=/home/ubuntu
RUN git clone https://github.com/Tiryoh/oneliners.git && \
    git clone https://github.com/Tiryoh/dotfiles.git && \
    /bin/bash -c 'cd ${HOME}/dotfiles; git checkout -b dev/autobuild origin/dev/autobuild; make vim-setup_for_docker'

