docker run -d --name kafka-01  \
-v /etc/localtime:/etc/localtime:ro \
-v /usr/share/zoneinfo/Asia/Shanghai:/etc/timezone:ro \
-v /data/docker/kafka/kafka-01/config:/kafka/config \
--network host kafka:10.2
