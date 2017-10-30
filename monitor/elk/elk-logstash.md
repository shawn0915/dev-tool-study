# Logstash

## Install

```bash
tar zxvf logstash-5.5.1.tar.gz -C ~/app
```

## Start

- Hello World
```bash
./bin/logstash -e ''
./bin/logstash -e 'input{stdin{}}output{stdout{codec=>rubydebug}}'
```
output:
```
{
    "@timestamp" => 2017-10-13T02:52:39.854Z,
      "@version" => "1",
          "host" => "localhost.localdomain",
       "message" => "hello world"
}
```

- "-f config/config.path"

```bash
# ./bin/logstash -f logstash-apache-beats.conf
# nohup ./bin/logstash -f logstash-apache-beats.conf &
./bin/logstash -f conf.d.ls
```

## Config

- [conf.d.ls v2](conf.d.ls.v2)


## grok

- [grok-patterns-4.1.0](grok/grok-patterns)
- [grok-patterns-customer](grok/grok-patterns-customer)

多行log =>  "(?m)"

## REF

- [How Logstash Works](https://www.elastic.co/guide/en/logstash/current/pipeline.html)
- [life-of-a-logstash-event](https://speakerdeck.com/elastic/life-of-a-logstash-event)
- [getting-started](https://www.elastic.co/guide/en/logstash/current/getting-started-with-logstash.html)
- [config-examples](https://www.elastic.co/guide/en/logstash/current/config-examples.html)
- [logstash-patterns-httpd](https://github.com/logstash-plugins/logstash-patterns-core/blob/master/patterns/httpd)
- [logstash-config-for-filebeat-modules](https://www.elastic.co/guide/en/logstash/5.6/logstash-config-for-filebeat-modules.html)

### Grok

- [grokdebugger-getting-started](https://www.elastic.co/guide/en/kibana/5.6/grokdebugger-getting-started.html)
- [~~logstash-grok-patterns~~](https://github.com/elastic/logstash/blob/v1.4.2/patterns/grok-patterns)
- [logstash-plugins-grok-patterns](https://github.com/logstash-plugins/logstash-patterns-core/blob/master/patterns/grok-patterns)
- [grok-express](https://doc.yonyoucloud.com/doc/logstash-best-practice-cn/filter/grok.html)
- [grokdebug](http://grokdebug.herokuapp.com/)
- [plugins-filters-grok](https://www.elastic.co/guide/en/logstash/current/plugins-filters-grok.html)
- [Grok 正则捕获](https://kibana.logstash.es/content/logstash/plugins/filter/grok.html)

### Codec plugins

- [plugins-codecs-multiline](https://www.elastic.co/guide/en/logstash/5.5/plugins-codecs-multiline.html)