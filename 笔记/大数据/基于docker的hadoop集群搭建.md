1. docker pull ubuntu       docker装载镜像
2. docker run -it ubuntu    进入ubuntu
3. apt-get update           升级apt-get
4. apt-get install vim      安装vim
5. vim /etc/apt/sources.list 替换apt-get镜像源
deb-src http://archive.ubuntu.com/ubuntu xenial main restricted #Added by software-properties
deb http://mirrors.aliyun.com/ubuntu/ xenial main restricted
deb-src http://mirrors.aliyun.com/ubuntu/ xenial main restricted multiverse universe #Added by software-properties
deb http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted multiverse universe #Added by software-properties
deb http://mirrors.aliyun.com/ubuntu/ xenial universe
deb http://mirrors.aliyun.com/ubuntu/ xenial-updates universe
deb http://mirrors.aliyun.com/ubuntu/ xenial multiverse
deb http://mirrors.aliyun.com/ubuntu/ xenial-updates multiverse
deb http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse #Added by software-properties
deb http://archive.canonical.com/ubuntu xenial partner
deb-src http://archive.canonical.com/ubuntu xenial partner
deb http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted multiverse universe #Added by software-properties
deb http://mirrors.aliyun.com/ubuntu/ xenial-security universe
deb http://mirrors.aliyun.com/ubuntu/ xenial-security multiverse
6. apt-get update       重新升级apt-get
7. apt install opened-8-jdk     安装JDK
8. apt-cache search jdk         无法找到安装包时，搜索安装包名称
9. apt install openjdk-8-jdk    安装JDK
10. apt-get install wget        安装wget
11. mkdir -p opt/apache/hadoop  创建hadoop目录
12. cd opt/apache/hadoop        进入hadoop目录
13. wget http://mirrors.sonic.net/apache/hadoop/common/hadoop-2.7.7/hadoop-2.7.7.tar.gz 下载hadoop
14. tar -xvzf hadoop-2.7.7.tar.gz     解压hadoop
15. vim ~/.bashrc       配置环境变量
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export HADOOP_HOME=/opt/apache/hadoop/hadoop-2.7.7
export HADOOP_CONFIG_HOME=$HADOOP_HOME/etc/hadoop
export PATH=$PATH:$HADOOP_HOME/bin
export PATH=$PATH:$HADOOP_HOME/sbin
16. source ~/.bashrc    重启配置文件
17. 创建文件夹  cd $HADOOP_HOME
mkdir tmp
mkdir namenode
mkdir datanode
18. cd $HADOOP_CONFIG_HOME
vim core-site.xml       修改配置文件
<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>
<!--
  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License. See accompanying LICENSE file.
-->

<!-- Put site-specific property overrides in this file. -->
<configuration>
<property>
        <name>hadoop.tmp.dir</name>
        <value>/opt/apache/hadoop/hadoop-2.7.7/tmp</value>
</property>
<property>
        <name>fs.default.name</name>
        <value>hdfs://master:9000</value>
        <final>true</final>
</property>
</configuration>

vim hdfs-site.xml
<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>
<!--
  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License. See accompanying LICENSE file.
-->

<!-- Put site-specific property overrides in this file. -->

<configuration>
<property>
        <name>dfs.replication</name>
        <value>2</value>
        <final>true</final>
</property>
<property>
        <name>dfs.namenode.name.dir</name>
        <value>/opt/apache/hadoop/hadoop-2.7.7/namenode</value>
        <final>true</final>
</property>
<property>
        <name>dfs.datanode.name.dir</name>
        <value>/opt/apache/hadoop/hadoop-2.7.7/datanode</value>
        <final>true</final>
</property>
</configuration>

cp mapred-site.xml.template mapred-site.xml
vim mapred-site.xml
<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>
<!--
  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License. See accompanying LICENSE file.
-->

<!-- Put site-specific property overrides in this file. -->

<configuration>
<property>
        <name>mapred.job.tarcker</name>
        <value>master:9001</value>
</property>
</configuration>

19. vim hadoop-env.sh   修改hadoop环境变量
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

20. hadoop namenode -format 刷新数据源

21. apt-get install ssh     安装ssh
22. vim ~/.bashrc   将ssh自启动写入配置文件
/usr/sbin/sshd
mkdir -p ～/var/run/sshd    创建sshd目录
23. cd ~/           生成访问密钥
ssh-keygen -t rsa -p '' -f ~/.ssh/id_dsa
cd .ssh
cat id_dsa.pub >> authorized_keys

24. vim /etc/ssh/ssh_config  修改ssh配置 ssh_config
StrictHostKeyChecking no    #将ask改为no
vim etc/ssh/sshd_config     修改sshd_config
#禁用密码验证
PasswordAuthentication  no
#启用密钥验证
RSAAuthentication   yes
PubkeyAuthentication    yes
AuthorizedKeysFile  .ssh/authorized_keys

25. docker commit 221d2a69363d ubuntu:hadoop    退出容器，进入docker控制台，保存当前容器。
26. docker run -ti -h master ubuntu:hadoop      启动master、slave1、slave2 三个容器
docker run -ti -h slave1 ubuntu:hadoop
docker run -ti -h slave2 ubuntu:hadoop

27. vim /etc/hosts 修改每个容器的host文件 分别加入其他两个容器的ip
127.0.0.1       localhost
::1     localhost ip6-localhost ip6-loopback
fe00::0 ip6-localnet
ff00::0 ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
172.17.0.2      master
172.17.0.3      slave1
172.17.0.4      slave2

28. cd $HADOOP_CONFIG_HOME/     修改master的slaves配置文件
vim slaves
将两个slave的name写入slaves配置文件

29. start-all           在master节点启动hadoop
30. hdfs dfsadmin -report       在master节点输入，查看各个节点的状态