#!/bin/bash
# allDb=$(docker exec -i lar psql -uroot -puser123 <<< "SHOW DATABASES;")
# echo $allDb;
docker exec -it pgsql psql -U postgres -w 
