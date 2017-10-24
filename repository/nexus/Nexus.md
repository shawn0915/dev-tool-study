# Nexus Repository OSS

[![Nexus](../../svg/Nexus-3.x-brightgreen.svg)]()


## Concept

### Nexus内置仓库说明

（1）Maven Central：该仓库代理Maven中央仓库，其策略为Release，因此只会下载和缓存中央仓库中的发布版本构件。
（2）Releases：这是一种策略为Release的宿主类型仓库，用来部署组织内部的发布版本构件。
（3）Snapshots：这是一个策略为Snapshot的宿主类型仓库，用来部署组织内部的快照版本构件。
（4）3rd party：这是一个策略为Release的宿主类型仓库，用来部署无法从公共仓库获得的第三方发布版本构件。
（5）Public Repositories：该仓库组将上述所有策略为Release的仓库聚合并通过一致的地址提供服务。

### Settings.xml

- 配置所有构建均从私服下载

eg. [setting_nexus.xml](conf/setting_nexus.xml)

### pom.xml

- 部署构建到Nexus，包含Release和Snapshot， 在项目根目录中pom.xml中配置：

eg. [pom_nexus.xml](conf/pom_nexus.xml)

## REF

- [download](https://www.sonatype.com/download-oss-sonatype)
- [help](https://help.sonatype.com/)

## Ps.

`admin123 => f865b53623b121fd34ee5426c792e5c33af8c227`