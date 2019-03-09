FROM ubuntu:16.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -qqy

RUN apt-get install apache2 php libapache2-mod-php php-xml php-mbstring imagemagick git wget -y

RUN echo "Installing tini"
RUN wget -q http://archive.ubuntu.com/ubuntu/pool/universe/t/tini/tini_0.18.0-1_amd64.deb && \
    dpkg -i "tini_0.18.0-1_amd64.deb" && \
    ln -s /usr/bin/tini /usr/local/bin/tini && \
    rm -f "tini_0.18.0-1_amd64.deb"