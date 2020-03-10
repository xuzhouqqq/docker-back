docker run -p  37801:6379 --name redis-master  -v /data/docker/redis/master/conf/redis.conf:/etc/redis/redis.conf -v /data/docker/redis/master/data:/data  -d redis:3.2.6-alpine redis-server /etc/redis/redis.conf --appendonly yes

docker run -p  37802:6379 --name redis-slave  -v /data/docker/redis/slave/conf/redis.conf:/etc/redis/redis.conf -v /data/docker/redis/slave/data:/data    -d redis:3.2.6-alpine redis-server /etc/redis/redis.conf --appendonly yes --slave-read-only yes --slaveof 172.31.40.116 37801
