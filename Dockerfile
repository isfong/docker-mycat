FROM openjdk:8-jdk-stretch

MAINTAINER isfong@qq.com

ADD http://dl.mycat.io/1.6.7.1/Mycat-server-1.6.7.1-release-20190213150257-linux.tar.gz /usr/local
RUN cd /usr/local && tar -zxvf Mycat-server-1.6.7.1-release-20190213150257-linux.tar.gz && ls -lna

ENV MYCAT_HOME /usr/local/mycat
ENV PATH $MYCAT_HOME/bin:$PATH

VOLUME /usr/local/mycat/conf
VOLUME /usr/local/mycat/logs

EXPOSE 8066 9066

RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak
ADD sources.list /etc/apt/
RUN apt update && apt install vim -y
ADD vimrc-append /
RUN cat /vimrc-append >> /etc/vim/vimrc



CMD ["/usr/local/mycat/bin/mycat", "console"]