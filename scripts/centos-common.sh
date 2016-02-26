#!/bin/bash

#Update CentOS with any patches
yum update -y 

# Tools
yum install -y nano git unzip screen nc zlib-devel

sudo rpm -ivh https://osquery-packages.s3.amazonaws.com/centos6/noarch/osquery-s3-centos6-repo-1-0.0.noarch.rpm
sudo yum install -y osquery

sudo yum groupinstall -y development

sudo yum install -y zlib-devel openssl-devel install centos-release-SCL python27

scl enable python27 bash

# Let's download the installation file using wget:
wget --no-check-certificate https://pypi.python.org/packages/source/s/setuptools/setuptools-1.4.2.tar.gz
# Extract the files from the archive:
tar -xvf setuptools-1.4.2.tar.gz
# Enter the extracted directory:
cd setuptools-1.4.2

curl -O https://bootstrap.pypa.io/get-pip.py





