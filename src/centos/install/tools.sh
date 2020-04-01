#!/usr/bin/env bash
### every exit != 0 fails the script
set -e
mkdir /tmp/dev
mkdir /tmp/etc
mkdir /tmp/home
mkdir /tmp/opt
mkdir /tmp/root
mkdir /tmp/run
mkdir /tmp/srv
mkdir /tmp/usr
mkdir /tmp/var
echo "Install some common tools for further installation"
yum -y install epel-release 
yum -y update
yum -y install vim sudo wget which net-tools bzip2 \
    numpy #used for websockify/novnc
yum clean all
