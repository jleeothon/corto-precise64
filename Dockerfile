FROM ubuntu:16.04

RUN \
DEBIAN_FRONTEND=noninteractive \
apt-get update -y

RUN \
DEBIAN_FRONTEND=noninteractive \
apt-get install -y \
git \
bison \
flex \
libxml2-dev \
curl \
libffi6 \
libffi-dev \
gdb \
valgrind \
&& \
git config --global user.useConfigOnly true

RUN \
DEBIAN_FRONTEND=noninteractive \
apt-get install -y \
zsh

RUN \
adduser --system --disabled-password corto \
&& \
adduser corto sudo

USER corto
WORKDIR /home/corto
