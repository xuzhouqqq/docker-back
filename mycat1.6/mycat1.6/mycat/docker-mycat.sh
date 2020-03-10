docker run -d --name mycat-1.6 --restart=always \
-p 33308:3308 -p 9067:9067  \
-v /data/docker/mycat1.6/mycat/conf:/mycat/conf \
-v /data/docker/mycat1.6/mycat/logs:/mycat/logs \
mycat:1.6.0
