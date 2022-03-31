#!/bin/bash
echo "Enter database name to create: "
read dbName
mysqlScript="CREATE DATABASE $dbName;"
echo "Running script $mysqlScript"
docker exec -i pgsql psql -U postgres <<< $mysqlScript
echo "Datababase $mysqlScript created"