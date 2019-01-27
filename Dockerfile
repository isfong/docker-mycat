FROM debian:latest
MAINTAINER isfong@qq.com
ADD jdk-8u202-linux-x64.tar.gz /usr/local/dev/
ADD mycat /usr/local/dev/mycat
ENV JAVA_HOME /usr/local/dev/jdk1.8.0_202
ENV MYCAT_HOME /usr/local/dev/mycat
ENV CLASSPATH $JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
ENV PATH $JAVA_HOME/bin:$MYCAT_HOME/bin:$PATH
EXPOSE 8066 9066
RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak
ADD sources.list /etc/apt/
RUN apt update
RUN apt install apt-utils procps -y
RUN apt upgrade
CMD /usr/local/dev/mycat/bin/mycat console