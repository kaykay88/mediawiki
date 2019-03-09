#!/bin/bash 
echo "Starting mysql server"
usermod -d /var/lib/mysql/ mysql
mkdir -p /var/run/mysqld
chown -R mysql:mysql /var/lib/mysql /var/run/mysqld
mysqld --initialize-insecure
sed -i 's/bind-address/#bind-address/' /etc/mysql/mysql.conf.d/mysqld.cnf
echo 'bind-address		= 0.0.0.0' >> /etc/mysql/mysql.conf.d/mysqld.cnf
service mysql start &
nc -z localhost 3306
while [ $? -ne 0 ]
do
    echo "Waiting for mysql to listen on port 3306"
    sleep 10
    nc -z localhost 3306
done
if [ -f /var/lib/mysql/config_mysql ]
then
    cp /var/lib/mysql/config_mysql /scripts/config_mysql
fi
if [[ $(cat /scripts/config_mysql) == '1' ]]
then
    echo "configuring mysql"
    /scripts/configure.sh
    echo "mysql configuration is done"
    echo "0" > /var/lib/mysql/config_mysql
fi
while true
do
    sleep 10
done