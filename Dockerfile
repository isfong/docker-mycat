FROM jdeathe/centos-ssh:latest
MAINTAINER isfong@qq.com
ADD jdk-8u202-linux-x64.tar.gz /usr/local/dev/
ADD Mycat-server-1.6.6.1-release-20181031195535-linux.tar.gz /usr/local/dev/
ENV JAVA_HOME /usr/local/dev/jdk1.8.0_202
ENV MYCAT_HOME /usr/local/dev/mycat
ENV CLASSPATH $JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
ENV PATH $PATH:$JAVA_HOME/bin:$MYCAT_HOME/bin
RUN mkdir /etc/yum.repos.d/backup
RUN mv /etc/yum.repos.d/*.repo  /etc/yum.repos.d/backup/
ADD CentOS-Base.repo /etc/yum.repos.d/
RUN yum clean all
RUN yum makecache
RUN yum update -y
#RUN chmod -R 777 /usr/local/dev/mycat/bin
#CMD ["./usr/local/dev/mycat/bin/mycat", "console"]