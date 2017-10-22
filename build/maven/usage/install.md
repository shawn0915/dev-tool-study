# Install

将压缩包解压到指定目录

    sudo tar zxvf apache-maven-3.3.9-bin.tar.gz -C /usr/local

配置环境变量

    sudo vi /etc/profile

追加文本

    M2_HOME=/usr/local/apache-maven-3.3.9
    export PATH=$M2_HOME/bin:$PATH

使其立即生效

    source /etc/profile

查看版本号

    mvn -version

Setting文件修订

    cd /usr/local/apache-maven-3.3.9/conf
    sudo mv settings.xml settings.xml.org

依据当前环境的maven仓库做地址修订

可用性测试

    mvn help:system
