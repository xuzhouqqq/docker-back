docker run --name mongo  -p 7011:27017 -v /data/docker/mongo/db:/data/db -v /data/docker/mongo/config:/data/configdb -d mongo:3.2 --config /data/configdb/mongodb.conf
