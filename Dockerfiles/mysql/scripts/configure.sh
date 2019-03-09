#!/bin/bash 
echo "Configuring mysql server"
mysql -u "root" -e "source /scripts/sql_config.sql"