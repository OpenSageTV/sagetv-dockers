# BUILDING
# docker build -t sagetvopen/sagetv-server-java8:latest .

FROM sagetvopen/sagetv-base:latest

MAINTAINER Ken Birch <usjusjoken@gmail.com>

RUN set -x

RUN mkdir -p /usr/lib/jvm && \
    cd /usr/lib/jvm/ && \
    wget https://download.java.net/openjdk/jdk8u41/ri/openjdk-8u41-b04-linux-x64-14_jan_2020.tar.gz && \
    tar -zxvf openjdk-8u41-b04-linux-x64-14_jan_2020.tar.gz && \
    rm -f openjdk-8u41-b04-linux-x64-14_jan_2020.tar.gz

# Copy cacerts from jdk 11 to /usr/lib/jvm/java-se-8u41-ri/jre/lib/security
COPY JAVACERT/ /

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME=/usr/lib/jvm/java-se-8u41-ri \
    PATH=/usr/lib/jvm/java-se-8u41-ri/bin:${PATH}

# Setup the /usr/bin/java alias (used by OpenDCT among other things)
RUN update-alternatives --install /usr/bin/java java /usr/lib/jvm/java-se-8u41-ri/bin/java 1