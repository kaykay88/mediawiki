#!/bin/bash
echo "Starting apache server"
service apache2 start &
echo "Starting mysql server"
service mysql start &
while true
do
    sleep 10
done