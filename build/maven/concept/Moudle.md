# 聚合与继承

## 聚合
如果我们想一次构建多个项目模块，那我们就需要对多个项目模块进行聚合
```xml
<modules><module>…</module></modules>
<modules>
  	<module>../core</module>
  	<module>../util</module>
  	<module>../web</module>
</modules>
```

## 继承

继承为了消除重复，我们把很多相同的配置提取出来
例如：grouptId，version等
```xml
<parent>  
    <groupId>cn.maven</groupId>
    <artifactId>Project</artifactId>
    <version>0.0.1-SNAPSHOT</version>
    <relativePath>../Project/pom.xml</relativePath>
</parent>

<dependency>
    <groupId>junit</groupId>
    <artifactId>junit</artifactId>
    <version>${junit.version}</version>
    <scope>test</scope>
</dependency>

<dependencyManagement>
    <dependencies>
	  <dependency>
		<groupId>junit</groupId>
		<artifactId>junit</artifactId>
		<version>${junit.version}</version>
		<scope>test</scope>
	  </dependency>	
	  <dependency>
	    	<groupId>cn.maven</groupId>
	    	<artifactId>HelloFriend</artifactId>
	    	<version>${maven.version}</version>
	    	<type>jar</type>
	    	<scope>compile</scope>
  	   </dependency>
     </dependencies>
  </dependencyManagement>
```

## 两者关系

- 聚合主要为了快速构建项目
- 继承主要为了消除重复
