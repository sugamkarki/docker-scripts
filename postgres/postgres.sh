#!/bin/bash
docker run --rm -dit -e POSTGRES_PASSWORD=user123 --name pgsql -p 5432:5432 postgres:14
echo "Waiting for mysql engine to bootup. Pausing 25 seconds"
sleep 25
echo "Enter database name to create: "
read dbName
mysqlScript="CREATE DATABASE $dbName;"
echo "Running script $mysqlScript"
docker exec -i pgsql mysql -uroot -puser123 <<< $mysqlScript
echo "Datababase $mysqlScript created"