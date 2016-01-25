#!/bin/bash

# MySQL
yum install -y mysql mysql-server mysql-devel
chkconfig --add mysqld 
chkconfig mysql on

service mysqld start

mysql -u root -e "SHOW DATABASES";

#  Download Starter Content
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/bjk1456/Vagrant/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/bjk1456/Vagrant/master/files/info.php

service httpd restart