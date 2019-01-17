**docker-mycat**

###download jdk in dir
###update Dockerfile jdk.tar.gz name and path dir
```$xslt
docker build -t isfong/docker-mycat:latest .
docker run -d --name mycat -p 8066:8066 -p 9066:9066 isfong/docker-mycat
```