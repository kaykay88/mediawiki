FROM ubuntu:16.04
RUN apt-get update -qqy; \
    apt-get install apache2 mysql-server php5 php5-mysql libapache2-mod-php5 imagemagick git -qqy

#Get MediaWiki

RUN cd /tmp/ && \
    wget https://releases.wikimedia.org/mediawiki/1.32/mediawiki-1.32.0.tar.gz && \
    tar -xvzf /tmp/mediawiki-*.tar.gz && \
    mv mediawiki-*/* /var/lib/mediawiki