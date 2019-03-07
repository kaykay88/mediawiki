#!/bin/bash
echo "Starting apache server"
service apache2 start &
echo "Starting mysql server"
chown -R mysql:mysql /var/lib/mysql /var/run/mysqld
service mysql start &
while true
do
    sleep 10
done