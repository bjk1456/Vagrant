#!/bin/bash

#Update CentOS with any patches
yum update -y 

# Tools
yum install -y nano git unzip screen nc zlib-devel

sudo yum groupinstall -y development

sudo yum install -y zlib-devel openssl-devel apt centos-release-SCL python27

scl enable python27 bash

# Let's download the installation file using wget:
wget --no-check-certificate https://pypi.python.org/packages/source/s/setuptools/setuptools-1.4.2.tar.gz
# Extract the files from the archive:
tar -xvf setuptools-1.4.2.tar.gz
# Enter the extracted directory:
cd setuptools-1.4.2

curl -O https://bootstrap.pypa.io/get-pip.py





