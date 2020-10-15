FROM debian:10

MAINTAINER Yuwei Ba<i@xiaoba.me>

RUN sh -c 'printf "deb http://deb.debian.org/debian stretch-backports main" > /etc/apt/sources.list.d/stretch-backports.list'
RUN apt-get update && \
    yes | apt-get install shadowsocks-libev --no-install-recommends && \
     rm -rf /var/lib/apt/lists/*

RUN apt-get update && yes | apt-get install libc-ares-dev && rm -rf /var/lib/apt/lists/*


CMD ["ss-server", "-s", "0.0.0.0", "-p", "32384", "-k", "password", "-m", "aes-256-cfb"]

