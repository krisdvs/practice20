#!/bin/bash
# installing hadoop 3.1 in ubunt
sudo apt install openjdk-8-jdk -y # to install open jdk 8 in ubuntu
java -version
echo $JAVA_HOME
/usr/lib/jvm/java-8-openjdk-amd64
# add user
hadoopadmin
su - hadoopadmin
sudo apt-get install ssh
sudo apt-get install pdsh
cd /home/hadoopadmin
mkdir hadoop
cd hadoop
wget  http://apachemirror.wuchna.com/hadoop/common/hadoop-3.1.3/hadoop-3.1.3.tar.gz
tar -xvf hadoop-3.1.3.tar.gz
# open /home/hadoopadmin/hadoop/hadoop-3.1.3/etc/hadoop
vi hadoop-env.sh
# export JAVA_HOME"/usr/lib/jvm/java-8-openjdk-amd64"
cd /home/hadoopadmin/hadoop/hadoop-3.1.3
bin/hadoop
# vist thin link to configure some html 
# https://hadoop.apache.org/docs/r3.1.0/hadoop-project-dist/hadoop-common/SingleCluster.html#Download
# go to terminal and 
# open /home/hadoopadmin/hadoop/hadoop-3.1.3/etc/hadoop
Use the following:

etc/hadoop/core-site.xml:
vi core-site.html
<configuration>
    <property>
        <name>fs.defaultFS</name>
        <value>hdfs://localhost:9000</value>
    </property>
</configuration>

etc/hadoop/hdfs-site.xml:
vi hdfs-site.xml
<configuration>
    <property>
        <name>dfs.replication</name>
        <value>1</value>
    </property>
</configuration>


ssh localhost
ssh-keygen -t rsa -P '' -f ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
chmod 0600 ~/.ssh/authorized_keys
cd /home/hadoopadmin/hdp/hadoop-3.1.3/
ll
bin/hdfs namenode -format
export PDSH_RCMD_TYPE=ssh
sbin/start-sfs.sh
sbin/start-dfs.sh
bin/hdfs dfs -mkdir /user
bin/hdfs dfs -mkdir /user/hadoopadmin
bin/hdfs dfs -mkdir input
bin/hdfs dfs -put etc/hadoop/*.xml input

sbin/stop-dfs.sh
open /home/hadoopadmin/hadoop/hadoop-3.1.3/etc/hadoop

#Configure parameters as follows:

#etc/hadoop/mapred-site.xml:

<configuration>
    <property>
        <name>mapreduce.framework.name</name>
        <value>yarn</value>
    </property>
</configuration>

<configuration>
    <property>
        <name>mapreduce.application.classpath</name>
        <value>$HADOOP_MAPRED_HOME/share/hadoop/mapreduce/*:$HADOOP_MAPRED_HOME/share/hadoop/mapreduce/lib/*</value>
    </property>
</configuration>


#etc/hadoop/yarn-site.xml:

<configuration>
    <property>
        <name>yarn.nodemanager.aux-services</name>
        <value>mapreduce_shuffle</value>
    </property>
    <property>
        <name>yarn.nodemanager.env-whitelist</name>
        <value>JAVA_HOME,HADOOP_COMMON_HOME,HADOOP_HDFS_HOME,HADOOP_CONF_DIR,CLASSPATH_PREPEND_DISTCACHE,HADOOP_YARN_HOME,HADOOP_MAPRED_HOME</value>
    </property>
</configuration>

open /home/hadoopadmin/hadoop/hadoop-3.1.3/

sbin/start-yarn.sh
# now check in ip:8088


