**docker-mycat**

###<span style="color:red">download jdk in dir</span>
###update Dockerfile jdk.tar.gz name and path dir
```diff
+ docker build -t isfong/mycat:latest .
+ docker run --name mycat -p 8066:8066 -p 9066:9066 -d isfong/mycat
```