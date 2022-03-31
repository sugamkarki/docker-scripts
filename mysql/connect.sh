#!/bin/bash
allDb=$(docker exec -i lar mysql -uroot -puser123 <<< "SHOW DATABASES;")
echo $allDb;
# docker exec -it lar mysql -uroot -puser123 <<< $mysqlScript
