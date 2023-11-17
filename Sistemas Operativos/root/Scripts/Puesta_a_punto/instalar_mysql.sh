#!/bin/bash
rpm -Uvh https://repo.mysql.com/mysql80-community-release-el7-3.noarch.rpm
sed -i 's/enabled=1/enabled=0/' /etc/yum.repos.d/mysql-community.repo
rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2022
yum --enablerepo=mysql80-community install mysql-community-server
mysql -V
systemctl start mysqld
