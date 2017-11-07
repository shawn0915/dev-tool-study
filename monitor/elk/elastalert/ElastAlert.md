# ElastAlert


## Requirement

- Elasticsearch
- ISO8601 or Unix timestamped data
- Python 2.7
- pip, see requirements.txt
- Packages on Ubuntu 14.x: python-pip python-dev libffi-dev libssl-dev

https://elastalert.readthedocs.io/en/latest/running_elastalert.html#requirements

## Install

```
python --version
Python 2.7.5
```

```
yum install -y python-devel libffi-devel openssl-devel
easy_install pip
pip install -U pip setuptools six
#
cd elastalert
sudo python setup.py install
sudo pip install -r requirements.txt
```

```
ll /usr/bin/elastalert*
/usr/bin/elastalert
/usr/bin/elastalert-create-index
/usr/bin/elastalert-rule-from-kibana
/usr/bin/elastalert-test-rule
```

## Config

- elastalert-create-index

```
[root@elksrv ~]# elastalert-create-index
Enter Elasticsearch host: localhost
Enter Elasticsearch port: 9200
Use SSL? t/f: f
Enter optional basic-auth username (or leave blank): elastic
Enter optional basic-auth password (or leave blank): 
Enter optional Elasticsearch URL prefix (prepends a string to the URL of every request): 
New index name? (Default elastalert_status) 
Name of existing index to copy? (Default None) 
New index elastalert_status created
Done!
```

- config.yaml

```
cp config.yaml.example config.yaml
```

- example_rules

```
cd example_rules/
```

## Run

```bash
python -m elastalert.elastalert --verbose --rule example_frequency.yaml
```

## REF

- [Yelp/elastalert](https://github.com/Yelp/elastalert)
- [elastalert](http://elastalert.readthedocs.io/en/latest/)
- [elastalert-writingfilters](https://elastalert.readthedocs.io/en/latest/recipes/writing_filters.html#writingfilters)
- [elk-guide-cn-elastalert](https://kibana.logstash.es/content/elasticsearch/other/elastalert.html)

### blog

- [https://anjia.ml/2017/02/14/elasticsearch-elastalert/](https://anjia.ml/2017/02/14/elasticsearch-elastalert/)

