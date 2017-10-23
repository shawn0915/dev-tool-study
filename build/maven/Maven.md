# Apache Maven

[![Maven](../../svg/Maven-3.3.9-brightgreen.svg)]()


Maven是跨平台的项目管理工具。主要服务于基于Java平台的项目构建，依赖管理和项目信息管理。

## Concept

- 项目集成
- 系统构建
- 测试驱动开发TDD
- 持续集成CI

## Maven Core Concept

- [POM(Project Object Model)](config/pom_demo.xml)
- [Location](concept/Location.md)
- [Dependency](concept/Dependency.md)
- [Repository](concept/Repository.md)
- [Lifecycle](concept/Lifecycle.md)
- [Plugin](plugins/Plugin.md)
- [聚合与继承](concept/Moudle.md)

## Common Usage

- [Install](usage/Install.md)
- [Deploy](usage/Deploy.md)
- [Command](usage/Command.md)
- [Settings](usage/Settings.md)
- ~~m2eclipse~~

## Convention Over Configuration

约定优于配置

```yaml
src/main/java —— 存放项目的.java文件 
src/main/resources —— 存放项目资源文件，如spring, hibernate配置文件 
src/test/java —— 存放所有测试.java文件，如JUnit测试类 
src/test/resources —— 测试资源文件 
target —— 项目输出位置 
pom.xml
```

## Ref

- [maven.apache.org](http://maven.apache.org/Maven.md)
- [Binary Repository Manager Feature Matrix](https://binary-repositories-comparison.github.io/)
- [introduction-to-the-lifecycle](http://maven.apache.org/guides/introduction/introduction-to-the-lifecycle.html)

### Book

- [mvn-in-action](http://www.juvenxu.com/mvn-in-action/)

### Repository

- [mvnrepository](http://mvnrepository.com/)
- [repository.sonatype](https://repository.sonatype.org/)
- [repository.jboss](http://repository.jboss.com/maven2/)

## Plugin

```
http://www.codehaus.org/
http://mojo.codehaus.org/
https://nexus.codehaus.org/content/groups/snapshots-group/org/codehaus/mojo/
http://repo1.maven.org/maven2/org/codehaus/mojo/
```