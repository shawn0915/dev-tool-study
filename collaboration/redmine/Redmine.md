# Redmine

[![Redmine](https://img.shields.io/badge/Redmine-3.4.x-green.svg)]()

Redmine is a flexible project management web application. Written using the Ruby on Rails framework, it is cross-platform and cross-database.


## Install

- tarball
- docker
- cloud

## Backup

- data

```bash
mysqldump -uroot -p -hlocalhost -P3306 redmine > backup_redmine_20150518.sql
```

- file

```bash
tar zcvf backup_redmine.tgz redmine-2.3.0-0/apps/redmine/htdocs/files
```


## REF

- [redmine.org](http://www.redmine.org/)
- [RedmineInstall](http://www.redmine.org/projects/redmine/wiki/RedmineInstall)
- [bitnami-Redmine](https://bitnami.com/stack/redmine)
- [redmine.org.cn](http://www.redmine.net.cn/)
- [redmine.jp](http://redmine.jp/)

### Download

- [redmine](http://www.redmine.org/projects/redmine/wiki/Download)
- [bitnami-redmine](https://bitnami.com/stack/redmine/installer)
- docker-redmine