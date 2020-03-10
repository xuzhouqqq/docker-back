docker run -d --name mysql-master-01 \
-e MYSQL_ROOT_PASSWORD=StarLife2018iot -e MYSQL_USER=mysql -e MYSQL_PASSWORD=mysql2018iot -p 33306:3306 \
-v /data/docker/mysql/mysql-01-master/my-master.cnf:/etc/mysql/my.cnf \
-v /data/docker/mysql/mysql-01-master/data:/var/lib/mysql \
mysql:5.6.29
