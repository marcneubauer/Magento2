#!/usr/bin/env bash

mysqlContainer="magecif_db_1"

db=$(find ./backup -regex "^.*.local.*sql.gz$" | sort -r | head -n1)
        if [ -n "${db// }" ]; then
            # We found a db!
            echo "DB found, using $db"
        else
            echo "Still could not find a db."
        fi

echo "Import DB"
gunzip < $db | docker exec -i $mysqlContainer /bin/bash -c "mysql -h127.0.0.1 -uroot -proot magento"
echo ""
