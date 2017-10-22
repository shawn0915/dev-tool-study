# Plugin


## 获取插件信息

基本上所有主要的Maven插件都来自Apache和Codehaus。


## 使用maven-help-plugin描述插件`help: describe`

```bash
mvn org.apache.maven.plugins:maven-help-plugin:2.2:describe -Dplugin=compiler
mvn help:describe -Dplugin=compiler
```

[插件配置实例](../config/mvn_plugin.xml)

## jetty-maven-plugin

- pom.xml

```xml
    <plugins>
        <plugin>
            <groupId>org.mortbay.jetty</groupId>
            <artifactId>jetty-maven-plugin</artifactId>
            <version>8.1.16.v20140903</version>
            <configuration>
                <scanIntervalSeconds>10</scanIntervalSeconds>
                <webAppConfig>
                    <contextPath>/soa</contextPath>
                </webAppConfig>
            </configuration>
        </plugin>
    </plugins>
```

scanIntervalSeconds表示该插件扫描项目变更的时间间隔，这里是10s，默认0。如果不扫描，用户也就失去了所谓的自动化热部署功能。


- setting.xml

```xml
    <pluginGroups>
        <pluginGroup>org.mortbay.jetty</pluginGroup>
    </pluginGroups>
```

- browse

```bash
mvn jetty:run -Djetty.port:8091
```

访问地址：`http://localhost:8091/soa/`
