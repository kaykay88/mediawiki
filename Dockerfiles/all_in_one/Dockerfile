FROM ubuntu:16.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -qqy; \
    apt-get install apache2 mysql-server php php-mysql libapache2-mod-php php-xml php-mbstring imagemagick git wget -qqy && \
    chown -R mysql:mysql /var/lib/mysql /var/run/mysqld

#Get MediaWiki

RUN cd /tmp/ && \
    wget https://releases.wikimedia.org/mediawiki/1.32/mediawiki-1.32.0.tar.gz && \
    tar -xvzf /tmp/mediawiki-*.tar.gz && \
    mkdir -p /var/lib/mediawiki && \
    mv mediawiki-*/* /var/lib/mediawiki

ENTRYPOINT ["/usr/bin/tini", "--", "/scripts/bootstrap.sh"]