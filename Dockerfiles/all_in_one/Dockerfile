FROM ubuntu:16.04
RUN apt-get update -qqy; \
    apt-get install apache2 mysql-server php php-mysql libapache2-mod-php php-xml php-mbstring imagemagick git -qqy

#Get MediaWiki

RUN cd /tmp/ && \
    wget https://releases.wikimedia.org/mediawiki/1.32/mediawiki-1.32.0.tar.gz && \
    tar -xvzf /tmp/mediawiki-*.tar.gz && \
    mv mediawiki-*/* /var/lib/mediawiki