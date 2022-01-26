# BUILDING
# docker build -t sagetvopen/sagetv-opendct:latest sagetv-opendct

#FROM ubuntu:16.04
FROM phusion/baseimage:master

MAINTAINER Ken Birch <usjusjoken@gmail.com>

ENV APP_NAME="OpenDCT Network Encoder"

ENV DEBIAN_FRONTEND=noninteractive

# add sagetv user and group
RUN useradd -u 911 -U -d /opt/opendct -s /bin/bash -G video sagetv
RUN groupmod -o -g 100 sagetv
RUN groupmod -o -g 99 video

# Speed up APT
RUN echo "force-unsafe-io" > /etc/dpkg/dpkg.cfg.d/02apt-speedup \
  && echo "Acquire::http {No-Cache=True;};" > /etc/apt/apt.conf.d/no-cache

RUN set -x \
  && apt-get update \
  && apt-get install -y curl wget default-jre-headless jq

VOLUME ["/etc/opendct"]
VOLUME ["/var/log/opendct"]
VOLUME ["/opt/opendct"]

ADD install-opendct.sh /usr/bin/
RUN chmod 755 /usr/bin/install-opendct.sh

# 9091 for webui and 8271 to discover sagetv servers
EXPOSE 9091 8271

# launch script which will install and start opendct
CMD ["/usr/bin/install-opendct.sh"]