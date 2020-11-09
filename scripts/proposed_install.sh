#!/bin/bash

sudo sh -c "echo 'deb http://archive.ubuntu.com/ubuntu/ $(lsb_release -cs)-proposed restricted main multiverse universe' >> /etc/apt/sources.list.d/proposed-repositories.list"
sudo apt update
sudo apt -t $(lsb_release -cs)-proposed install some-package

