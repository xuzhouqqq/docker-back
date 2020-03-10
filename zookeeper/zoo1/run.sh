docker run --network host --name zoo1 -d \
-v /data/docker/zookeeper/zoo1/conf:/opt/zookeeper/conf \
-v /data/docker/zookeeper/zoo1/dataDir:/tmp/zookeeper \
jplock/zookeeper:3.4.9

