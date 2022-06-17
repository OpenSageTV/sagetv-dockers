# BUILDING
# docker build -t sagetvopen/sagetv-server-java11:latest .

FROM sagetvopen/sagetv-base:latest

MAINTAINER Ken Birch <usjusjoken@gmail.com>

RUN set -x

RUN mkdir -p /usr/lib/jvm && \
    cd /usr/lib/jvm/ && \
    wget https://builds.openlogic.com/downloadJDK/openlogic-openjdk/11.0.15+10/openlogic-openjdk-11.0.15+10-linux-x64.tar.gz && \
    tar -zxvf openlogic-openjdk-11.0.15+10-linux-x64.tar.gz && \
    rm -f openlogic-openjdk-11.0.15+10-linux-x64.tar.gz

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME=/usr/lib/jvm/openlogic-openjdk-11.0.15+10-linux-x64 \
    PATH=/usr/lib/jvm/openlogic-openjdk-11.0.15+10-linux-x64/bin:${PATH}

# NOTE: jssecerts is a schedules direct cerificate imported via
# https://stackoverflow.com/questions/21076179/pkix-path-building-failed-and-unable-to-find-valid-certification-path-to-requ
# into $JAVA_HOME/lib/security/
COPY SYSTEM/ /

RUN echo "PATH=${PATH}" > /etc/profile.d/sagetv.sh && \
    JAVA_HOME=/usr/lib/jvm/openlogic-openjdk-11.0.15+10-linux-x64 >> /etc/profile.d/sagetv.sh && \
    chmod 755 /usr/local/bin/* && \
    chmod 755 /etc/profile.d/sagetv.sh

# Setup the /usr/bin/java alias (used by OpenDCT among other things)
RUN update-alternatives --install /usr/bin/java java /usr/lib/jvm/openlogic-openjdk-11.0.15+10-linux-x64/bin/java 1
