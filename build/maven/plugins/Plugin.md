# Plugin


## 获取插件信息

基本上所有主要的Maven插件都来自Apache和Codehaus。


## 使用maven-help-plugin描述插件`help: describe`

```bash
mvn org.apache.maven.plugins:maven-help-plugin:2.2:describe -Dplugin=compiler
mvn help:describe -Dplugin=compiler
```

[插件配置实例](../config/mvn_plugin.xml)
