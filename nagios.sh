#!/bin/bash

sudo yum update
yum install -y httpd httpd-tools php gcc glibc glibc-common gd gd-devel make net-snmp openssl-devel firewalld
useradd nagios
groupadd nagcmd
usermod -G nagcmd nagios
usermod -G nagcmd apache
mkdir /root/nagios
cd /root/nagios
wget https://assets.nagios.com/downloads/nagioscore/releases/nagios-4.4.9.tar.gz
wget https://nagios-plugins.org/download/nagios-plugins-2.3.3.tar.gz
tar -xf nagios-4.4.9.tar.gz
tar -xf nagios-plugins-2.3.3.tar.gz
cd nagios-4.4.9/
./configure --with-command-group=nagcmd
make all
make install
make install-init
make install-commandmode
make install-config
#vi /usr/local/nagios/etc/objects/contacts.cfg
make install-webconf
htpasswd -s -c /usr/local/nagios/etc/htpasswd.users nagiosadmin
systemctl restart httpd
cd /root/nagios
cd nagios-plugins-2.3.3
./configure --with-nagios-user=nagios --with-nagios-group=nagios
make
make install
/usr/local/nagios/bin/nagios -v /usr/local/nagios/etc/nagios.cfg
systemctl enable nagios
systemctl enable httpd
systemctl restart nagios
systemctl start firewalld.service

#firewall-cmd --permanent --zone=public --add-service=http
#firewall-cmd --permanent --zone=public --add-service=https
#firewall-cmd --reload
