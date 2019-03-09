FROM ubuntu:16.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y

RUN apt-get install apache2 php libapache2-mod-php php-xml php-mbstring imagemagick git wget netcat -y

RUN apt-get install php-mysql -y

RUN echo "Getting MediaWiki"
RUN cd /tmp/ && \
    wget https://releases.wikimedia.org/mediawiki/1.32/mediawiki-1.32.0.tar.gz && \
    tar -xvzf /tmp/mediawiki-*.tar.gz && \
    mkdir -p /var/lib/mediawiki && \
    mv mediawiki-*/* /var/lib/mediawiki

RUN echo "Installing tini"
RUN wget -q http://archive.ubuntu.com/ubuntu/pool/universe/t/tini/tini_0.18.0-1_amd64.deb && \
    dpkg -i "tini_0.18.0-1_amd64.deb" && \
    ln -s /usr/bin/tini /usr/local/bin/tini && \
    rm -f "tini_0.18.0-1_amd64.deb"

COPY ./scripts /scripts
RUN chmod +x /scripts/*

ENTRYPOINT ["/usr/bin/tini", "--", "/scripts/bootstrap.sh"]