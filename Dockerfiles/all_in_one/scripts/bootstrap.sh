#!/bin/bash
echo "Starting apache server"
service apache2 start &
echo "Starting mysql server"
usermod -d /var/lib/mysql/ mysql
mkdir -p /var/run/mysqld
chown -R mysql:mysql /var/lib/mysql /var/run/mysqld
mysqld --initialize-insecure
service mysql start &
while true
do
    sleep 10
done