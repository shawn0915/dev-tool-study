
# Input

```
2017-10-27 12:34:56,789 log4j:ERROR Could not instantiate class [org.appache.log4j.PatternLayout].java.lang.ClassNotFoundException: org.appache.log4j.PatternLayout
	at java.net.URLClassLoader.findClass(URLClassLoader.java:381)    
	at java.lang.ClassLoader.loadClass(ClassLoader.java:424)    
	at sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:331)    
	at java.lang.ClassLoader.loadClass(ClassLoader.java:357)    
	at java.lang.Class.forName0(Native Method)    
	at java.lang.Class.forName(Class.java:264)    
	at org.apache.log4j.helpers.Loader.loadClass(Loader.java:198)    
	at org.apache.log4j.helpers.OptionConverter.instantiateByClassName(OptionConverter.java:327)    
	at org.apache.log4j.helpers.OptionConverter.instantiateByKey(OptionConverter.java:124)    
	at org.apache.log4j.PropertyConfigurator.parseAppender(PropertyConfigurator.java:797)    
	at org.apache.log4j.PropertyConfigurator.parseCategory(PropertyConfigurator.java:768)    
	at org.apache.log4j.PropertyConfigurator.configureRootCategory(PropertyConfigurator.java:648)    
	at org.apache.log4j.PropertyConfigurator.doConfigure(PropertyConfigurator.java:514)    
	at org.apache.log4j.PropertyConfigurator.doConfigure(PropertyConfigurator.java:580)    
	at org.apache.log4j.helpers.OptionConverter.selectAndConfigure(OptionConverter.java:526)    
	at org.apache.log4j.LogManager.<clinit>(LogManager.java:127)    
	at org.apache.log4j.Logger.getLogger(Logger.java:117)    
	at Lo4jTest.main(Lo4jTest.java:8)
```

# Pattern

```
%{DUBBOLOG_DATESTAMP:[dubbo][date_stamp]} %{DUBBOLOG_TIMESTAMP:[dubbo][time_stamp]} log4j:%{LOGLEVEL:[dubbo][loglevel]} (?m)%{JAVALOGMESSAGE:[dubbo][message]}
```

# Custom Pattern

```
{
  "DUBBOLOG_DATESTAMP":"20%{YEAR}-%{MONTHDAY}-%{MONTHDAY}",
  "DUBBOLOG_TIMESTAMP":"%{HOUR}:?%{MINUTE}(?::?%{SECOND})"
}
```

# custom-grok-pattern

```
# dubbo log format
DUBBOLOG_DATESTAMP 20%{YEAR}-%{MONTHDAY}-%{MONTHDAY}
DUBBOLOG_TIMESTAMP %{HOUR}:?%{MINUTE}(?::?%{SECOND})
```

