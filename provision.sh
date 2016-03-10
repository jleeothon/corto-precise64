#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
apt-get update -y

apt-get install -y bison
apt-get install -y flex
apt-get install -y git
apt-get install -y gdb
apt-get install -y libxml2-dev
apt-get install -y valgrind
apt-get install -y curl

apt-get install -y python-software-properties
add-apt-repository -y ppa:fkrull/deadsnakes
apt-get install -y python3.4
apt-get install -y python3-pip
apt-get install -y python3.4-dev
apt-get install -y python3.4-venv
apt-get install -y python3.5
apt-get install -y python3.5-dev
apt-get install -y python3.5-venv

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable --ruby
rvm install 2.2

# TODO change for symbolic links so that they can be edited from the host machine
cp ~/scripts/.bashrc ~/.bashrc
cp ~/scripts/cortoproject-rakefile ~/cortoproject/rakefile
