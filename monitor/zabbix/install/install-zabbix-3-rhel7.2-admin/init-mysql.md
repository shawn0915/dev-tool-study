> 创建zabbix数据库和mysql用户

```mysql
create schema zabbix character set utf8;
create user 'zabbix'@'%' identified by '123456';
grant all on zabbix.* to 'zabbix'@'%';
flush privileges;
```

> 导入zabbix数据库初始数据

```bash
cd zabbix-3.0.1/database/mysql
mysql -u zabbix -p zabbix < schema.sql
mysql -u zabbix -p zabbix < images.sql
mysql -u zabbix -p zabbix < data.sql
```