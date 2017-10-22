# Lifecycle

## 坐标

Maven坐标主要组成：
- groupId：定义当前Maven项目隶属项目 
- artifactId：定义实际项目中的一个模块 
- version：定义当前项目的当前版本 
- packaging：定义该项目的打包方式 


## Lifecycle

- clean
- default
- site

### clean 清理

```bash
pre-clean
clean
post-clean
```

### default 构建

```bash
validate
initialize
compile
test
package
verify
install
deploy
```

### site 建站

```bash
pre-site
site
post-site
site-depoly
```

## 聚合

聚合与继承的关系
聚合主要为了快速构建项目
继承主要为了消除重复
将父模块中将用dependencyManagement进行管理
