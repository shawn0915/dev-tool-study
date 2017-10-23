# jetty-maven-plugin

- pom.xml

```xml
    <plugins>
        <plugin>
            <groupId>org.mortbay.jetty</groupId>
            <artifactId>jetty-maven-plugin</artifactId>
            <version>8.1.16.v20140903</version>
            <configuration>
                <stopKey>stop</stopKey>
                <stopPort>9999</stopPort>
                <scanIntervalSeconds>1</scanIntervalSeconds>
                <contextXml>src/main/resources/config/jetty-context.xml</contextXml>
                
                <scanIntervalSeconds>10</scanIntervalSeconds>
                <webAppConfig>
                    <contextPath>/soa</contextPath>
                </webAppConfig>
                
                <connectors>
                    <connector implementation="org.eclipse.jetty.server.nio.SelectChannelConnector">
                    <!-- <connector implementation="org.eclipse.jetty.server.bio.SelectChannelConnector"> -->
                        <port>8098</port>
                        <!-- <maxIdleTime>60000</maxIdleTime> -->
                    </connector>
                    <connector implementation="org.eclipse.jetty.server.ssl.SslSelectChannelConnector">
                        <port>9443</port>
                        <keystore>/data/ssl_certs/.keystore</keystore>
                        <password>password</password>
                    </connector>
                </connectors>
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
