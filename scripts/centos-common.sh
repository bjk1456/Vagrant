#!/bin/bash

#Update CentOS with any patches
yum update -y --exclude=kernel

# Tools
yum install -y nano git unzip screen nc osquery python27

curl -O https://bootstrap.pypa.io/get-pip.py
sudo python27 get-pip.py
sudo pip install awscli --ignore-installed six



