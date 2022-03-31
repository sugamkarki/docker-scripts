#!/bin/bash
echo "Enter database name to create: "
read dbName
mysqlScript="CREATE DATABASE $dbName;"
echo "Running script $mysqlScript"
docker exec -i lar mysql -uroot -puser123 <<< $mysqlScript
echo "Datababase $mysqlScript created"