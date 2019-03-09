#!/bin/bash 
echo "Manipulating the sql file"
mysql_usr_pwd=$(cat /run/secrets/mysql_user)
sed "s/#PASSWORD/$mysql_usr_pwd/g" /scripts/sql_config.sql > /tmp/tmp_sql_config.sql
echo "Configuring mysql server"
mysql -u "root" -e "source /tmp/tmp_sql_config.sql"