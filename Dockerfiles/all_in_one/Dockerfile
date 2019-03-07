FROM ubuntu:16.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -qqy; \
    apt-get install apache2 mysql-server php php-mysql libapache2-mod-php php-xml php-mbstring imagemagick git wget -qqy

#Get MediaWiki
RUN cd /tmp/ && \
    wget https://releases.wikimedia.org/mediawiki/1.32/mediawiki-1.32.0.tar.gz && \
    tar -xvzf /tmp/mediawiki-*.tar.gz && \
    mkdir -p /var/lib/mediawiki && \
    mv mediawiki-*/* /var/lib/mediawiki

RUN wget -q http://archive.ubuntu.com/ubuntu/pool/universe/t/tini/tini_0.18.0-1_amd64.deb && \
    dpkg -i "tini_0.18.0-1_amd64.deb" && \
    ln -s /usr/bin/tini /usr/local/bin/tini && \
    rm -f "tini_0.18.0-1_amd64.deb"

COPY ./scripts /scripts

ENTRYPOINT ["/usr/bin/tini", "--", "/scripts/bootstrap.sh"]