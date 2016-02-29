#!/bin/bash

#Update CentOS with any patches
yum update -y

# Tools
sudo yum install -y nano git unzip screen nc zlib-devel vim-X11 vim-common vim-enhanced vim-minimal openssl-devel centos-release-SCL 
# Won't find if not on a separate line
sudo yum install -y python27

scl enable python27 bash

sudo yum groupinstall -y development

# Let's download the installation file using wget:
wget --no-check-certificate https://pypi.python.org/packages/source/s/setuptools/setuptools-1.4.2.tar.gz
# Extract the files from the archive:
tar -xvf setuptools-1.4.2.tar.gz
# Enter the extracted directory:
cd setuptools-1.4.2
# Install setuptools using the Python we've installed (2.7.6)
python2.7 setup.py install





