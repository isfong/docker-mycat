**docker-mycat**

###### build image and create container
```diff
docker build -t isfong/mycat:latest .
docker run \
    --name mycat \
    -p 8066:8066 \
    -p 9066:9066 \
    -v /:/host \
    -v /etc/localtime:/etc/localtime \
    -d isfong/mycat
```