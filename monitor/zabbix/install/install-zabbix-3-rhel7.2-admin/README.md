# base

rhel7.2
apache2.2
php5.6
zabbix3.0.1

ip:
zabbix-server:172.16.63.246
zabbix-mysql:172.16.75.188

# 1.root:yum

install-zabbix30_server-root.sh

# 2.admin:mysql-database

init-mysql.md

# 3.httpd

# 4.php

# 5.admin:zabbix-server

install-zabbix30_server-admin.sh

# 6.zabbix-agent

install-zabbix30_agent-root.sh
install-zabbix30_agentd-admin.sh


	测试 zabbix_agentd 是否正常工作
	/home/admin/local/zabbix/sbin/zabbix_agentd -c /home/admin/local/zabbix/etc/zabbix_agentd.conf -t system.uptime

	./zabbix_get -s 127.0.0.1 -p 10050 -k "system.cpu.load[all,avg1]"
	./zabbix_get -s 127.0.0.1 -p 10050 -k "system.hostname"

# 7.zabbix

check:zabbix-agent
key:agent.hostname
