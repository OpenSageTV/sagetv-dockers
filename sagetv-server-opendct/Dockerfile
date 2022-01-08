# BUILDING
# Note: Set ${JAVA_DOCKER_VERSION} prior to build to indicate the source FROM docker image to build from
# ${JAVA_DOCKER_VERSION} = "java8" or "java11" or "java16"
# docker build --build-arg javaversion=11 -t sagetvopen/sagetv-server-opendct-java11:latest sagetv-server-opendct
# docker build --build-arg javaversion=$javanum -t sagetvopen/sagetv-server-opendct-java$javanum:latest sagetv-server-opendct

ARG javaversion=8

FROM sagetvopen/sagetv-server-java$javaversion:latest
# FROM sagetvopen/sagetv-server-${JAVA_DOCKER_VERSION:-java8}:latest
# FROM sagetvopen/sagetv-server-java8:latest

CMD ["/sbin/my_init"]

MAINTAINER Ken Birch <usjusjoken@gmail.com>

RUN set -x

# add in our System Files to install/upgrade opendct
COPY SYSTEM/ /

RUN chmod 755 /etc/my_init.d/*

# For OpenDCT support
VOLUME ["/etc/opendct", "/var/log/opendct", "/opt/opendct"]
