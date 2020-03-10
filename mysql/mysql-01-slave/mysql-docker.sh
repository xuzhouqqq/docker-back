docker run -d --name mysql-slave-01 \
-e MYSQL_ROOT_PASSWORD=StarLife2018iot -e MYSQL_USER=mysql -e MYSQL_PASSWORD=mysql2018iot -p 33307:3306 \
-v /data/docker/mysql/mysql-01-slave/my-slave.cnf:/etc/mysql/my.cnf \
-v /data/docker/mysql/mysql-01-slave/data:/var/lib/mysql \
mysql:5.6.29
