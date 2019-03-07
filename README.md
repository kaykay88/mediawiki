# mediawiki
This repo contains script to generate Docker image for mediawiki

##Instruction to run the container:

mkdir persistence/mysql-db -p;
mkdir persistence/apache -p;

docker run -i -v ${pwd}/persistence/mysql-db:/var/lib/mysql -v ${pwd}/persistence/apache:/var/www mediawiki-demo:latest