#!/bin/bash

docker run -dit -e MYSQL_ROOT_PASSWORD=user123 --name lar -p 3306:3306 mysql:5.7
echo "Waiting for mysql engine to bootup. Pausing 25 seconds"
sleep 25
echo "Enter database name to create: "
read dbName
mysqlScript="CREATE DATABASE $dbName;"
echo "Running script $mysqlScript"
docker exec -i lar mysql -uroot -puser123 <<<$mysqlScript
echo "Datababase $mysqlScript created"
