#!/bin/bash

echo "list of docker containers"
allNames=$(docker ps -a)
echo $allNames

echo "Enter docker name"
read name
docker stop $name
docker rm $name
docker network rm mysql-net