# cargo-maven2-plugin

```xml
<groupId>org.codehaus.cargo</groupId>
<artifactId>cargo-maven2-plugin</artifactId>
<version>1.1.3</version>

<configuration>
    <container>
        <containerId>tomcat7x</containerId>
        <type>remote</type>
    </container>
    <configuration>
        <type>runtime</type>
        <properties>
            <cargo.remote.username>tomcat</cargo.remote.username>
            <cargo.remote.password>tomcat</cargo.remote.password>
            <cargo.remote.manager.url>http://localhost:8080/manager</cargo.remote.manager.url>
        </properties>
    </configuration>
</configuration>
```