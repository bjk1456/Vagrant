#!/bin/bash

#Update CentOS with any patches
yum update -y --exclude=kernel

# Tools
yum install -y nano git unzip screen nc 

sudo rpm -ivh https://osquery-packages.s3.amazonaws.com/centos6/noarch/osquery-s3-centos6-repo-1-0.0.noarch.rpm
sudo yum install -y osquery



