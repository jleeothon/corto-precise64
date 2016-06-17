#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

apt-get update -y

apt-get install -y git

apt-get install -y bison
apt-get install -y flex
apt-get install -y libxml2-dev
apt-get install -y curl
apt-get install -y libffi6
apt-get install -y libffi-dev

apt-get install -y gdb
apt-get install -y valgrind

# For python-binding
apt-get install -y python-software-properties
add-apt-repository -y ppa:fkrull/deadsnakes
apt-get update -y
apt-get install -y python3.4
apt-get install -y python3-pip
apt-get install -y python3.4-dev
apt-get install -y python3.4-venv
apt-get install -y python3.5
apt-get install -y python3.5-dev
apt-get install -y python3.5-venv

# For web
apt-get install -y libcurl4-openssl-dev

# For postgresql
cp /home/vagrant/scripts/postgresql.list /etc/apt/sources.list.d/postgresql.list
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
apt-get update -y
apt-get install -y postgresql-9.5
apt-get install -y postgres-xc-client
apt-get install -y postgres-xc
apt-get install -y libpq-dev

# Ruby
apt-add-repository -y ppa:brightbox/ruby-ng
apt-get update -y
apt-get install -y ruby2.2

# TODO change for symbolic links so that they can be edited from the host machine
cp /home/vagrant/scripts/.bashrc /home/vagrant/.bashrc
cp /home/vagrant/scripts/rakefile /home/vagrant/cortoproject/rakefile
