tar zxvf zabbix-3.0.1.tar.gz
cd zabbix-3.0.1
./configure --prefix=/home/admin/local/zabbix --enable-agent --with-mysql --enable-ipv6 --with-net-snmp --with-libcurl --with-libxml2 --with-ldap --with-openssl --with-openipmi --with-ssh2
make ; make install

cd /home/admin/local/zabbix/etc/
mv zabbix_agentd.conf zabbix_agentd.conf.org
cp -a ~/install-zabbix/zabbix_agentd.conf .

cd ../sbin
./zabbix_agentd

echo "Done."

/home/admin/local/zabbix/sbin/zabbix_agentd -c /home/admin/local/zabbix/etc/zabbix_agentd.conf -t system.uptime
