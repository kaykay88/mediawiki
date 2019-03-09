#!/bin/bash
echo "Starting apache server"
service apache2 start &
nc -z localhost 80
while [ $? -ne 0 ]
do
    echo "Waiting for apache to listen on port 80"
    sleep 10
    nc -z localhost 80
done
ln -s /var/lib/mediawiki /var/www/html/mediawiki
ln -s /config/LocalSettings.php /var/www/html/mediawiki/LocalSettings.php

while true
do
    sleep 10
done