FROM debian:9

MAINTAINER Yuwei Ba<i@xiaoba.me>

RUN sh -c 'printf "deb http://deb.debian.org/debian stretch-backports main" > /etc/apt/sources.list.d/stretch-backports.list'
RUN apt-get update
RUN yes | apt-get install shadowsocks-libev --no-install-recommends 


