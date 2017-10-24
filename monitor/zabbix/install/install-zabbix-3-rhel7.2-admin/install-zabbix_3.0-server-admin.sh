#!/bin/bash

tar zxvf fping-3.13.tar.gz
cd fping-3.13
./configure --prefix=/opt/local/fping
make && make install

cd ..

tar zxvf zabbix-3.0.4.tar.gz
cd zabbix-3.0.4
./configure --prefix=/opt/local/zabbix --enable-server --enable-agent --enable-proxy --with-mysql --enable-ipv6 --with-net-snmp --with-libcurl --with-libxml2 --with-ldap --with-openssl --with-openipmi --with-ssh2
make && make install
