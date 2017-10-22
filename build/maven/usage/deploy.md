# deploy

## self-motion upload

```bash
mvn clean install deploy -e -U -Dmaven.test.skip=true
```

使用-e参数：如果构建出现异常，该参数能让Maven打印完整的stack trace，以方便分析错误原因

使用-U参数： 该参数能强制让Maven检查所有SNAPSHOT依赖更新，确保集成基于最新的状态，如果没有该参数，Maven默认以天为单位检查更新，而持续集成的频率应该比这高很多

maven的快照版本机制，可以在项目发布到私服的过程中，自动为构件打上时间戳。
构建模块时，maven会自动从仓库检查依赖模块的最新构件，默认情况下maven每天检查一次更新（由仓库配置的updatePolicy控制），用户也可以强制检查更新`mvn clean install -U`
强制更新就会忽略<updatePolicy>配置

```xml
<repositorys>
    <repository>
        <releases>
            <enabled>ture</enabled><!-- 仓库开启对发布版本的支持 -->
            <updatePolicy>never</updatePolicy><!-- 更新频率 -->
        </releases>
        <snapshots>
            <enabled>ture</enabled>
        </snapshots>
    </repository>
</repositorys>
```

<updatePolicy>配置检查更新频率，每日检查，永远检查，从不检查，自定义时间等

当maven检查完更新策略，并决定检查依赖更新的时候，就需要检查仓库元数据maven-metadata.xml


## manual upload

```bash
mvn deploy:deploy-file -DgroupId=com.alibaba -DartifactId=dubbo -Dversion=2.8.4 -Dpackaging=jar -Dfile=dubbo-2.8.4.jar -Durl=http://mvn.shawnyan.com:8081/repository/shawn-release -DrepositoryId=releases
```

