FROM ubuntu:16.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y

RUN apt-get install mysql-server php php-mysql wget netcat -y

RUN wget -q http://archive.ubuntu.com/ubuntu/pool/universe/t/tini/tini_0.18.0-1_amd64.deb && \
    dpkg -i "tini_0.18.0-1_amd64.deb" && \
    ln -s /usr/bin/tini /usr/local/bin/tini && \
    rm -f "tini_0.18.0-1_amd64.deb"

COPY ./scripts /scripts
RUN chmod +x /scripts/*



ENTRYPOINT ["/usr/bin/tini", "--", "/scripts/bootstrap.sh"]

