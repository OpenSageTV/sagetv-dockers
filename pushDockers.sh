#!/usr/bin/env bash
# docker push requires you to login.  If not already logged in then use the following before running this script
#   docker login --username=myusername

#you need to pass in a container version number so both latest and a version are purched
if [ "$1" = "" ] ; then
    echo "Container version number must be passed: ./pushDockers.sh 2.0.1"
    exit 0;
fi

#push with default latest tag
echo "pushing 'latest' images"
docker push sagetvopen/sagetv-base
docker push sagetvopen/sagetv-server-java8
docker push sagetvopen/sagetv-server-java11
docker push sagetvopen/sagetv-server-java16
docker push sagetvopen/sagetv-server-opendct-java8
docker push sagetvopen/sagetv-server-opendct-java11
docker push sagetvopen/sagetv-server-opendct-java16
docker push sagetvopen/sagetv-opendct

#push with the passed in container version tag
echo "tagging and pushing $1 images"
docker tag sagetvopen/sagetv-base sagetvopen/sagetv-base:$1
docker push sagetvopen/sagetv-base:$1
docker tag sagetvopen/sagetv-server-java8 sagetvopen/sagetv-server-java8:$1
docker push sagetvopen/sagetv-server-java8:$1
docker tag sagetvopen/sagetv-server-java11 sagetvopen/sagetv-server-java11:$1
docker push sagetvopen/sagetv-server-java11:$1
docker tag sagetvopen/sagetv-server-java16 sagetvopen/sagetv-server-java16:$1
docker push sagetvopen/sagetv-server-java16:$1
docker tag sagetvopen/sagetv-server-opendct-java8 sagetvopen/sagetv-server-opendct-java8:$1
docker push sagetvopen/sagetv-server-opendct-java8:$1
docker tag sagetvopen/sagetv-server-opendct-java11 sagetvopen/sagetv-server-opendct-java11:$1
docker push sagetvopen/sagetv-server-opendct-java11:$1
docker tag sagetvopen/sagetv-server-opendct-java16 sagetvopen/sagetv-server-opendct-java16:$1
docker push sagetvopen/sagetv-server-opendct-java16:$1
docker tag sagetvopen/sagetv-opendct sagetvopen/sagetv-opendct:$1
docker push sagetvopen/sagetv-opendct:$1
