#FROM java:8-jdk-alpine
FROM java:openjdk-8
MAINTAINER zkw
# RUN mkdir /conf
COPY mycat /mycat/
EXPOSE 3308
WORKDIR /mycat
VOLUME ["/mycat/conf","/mycat/log"]
ENTRYPOINT ["/mycat/bin/mycat","console","&"]


