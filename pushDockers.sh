#!/usr/bin/env bash
# docker push requires you to login.  If not already logged in then use the following before running this script
#   docker login --username=myusername

# get container version from the version file - update the file prior to running
cversion=$(<containerversion) && \
export cversion && \
echo "Container version $cversion read from containerversion file"

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
echo "tagging and pushing $cversion images"
docker tag sagetvopen/sagetv-base sagetvopen/sagetv-base:$cversion
docker push sagetvopen/sagetv-base:$cversion
docker tag sagetvopen/sagetv-server-java8 sagetvopen/sagetv-server-java8:$cversion
docker push sagetvopen/sagetv-server-java8:$cversion
docker tag sagetvopen/sagetv-server-java11 sagetvopen/sagetv-server-java11:$cversion
docker push sagetvopen/sagetv-server-java11:$cversion
docker tag sagetvopen/sagetv-server-java16 sagetvopen/sagetv-server-java16:$cversion
docker push sagetvopen/sagetv-server-java16:$cversion
docker tag sagetvopen/sagetv-server-opendct-java8 sagetvopen/sagetv-server-opendct-java8:$cversion
docker push sagetvopen/sagetv-server-opendct-java8:$cversion
docker tag sagetvopen/sagetv-server-opendct-java11 sagetvopen/sagetv-server-opendct-java11:$cversion
docker push sagetvopen/sagetv-server-opendct-java11:$cversion
docker tag sagetvopen/sagetv-server-opendct-java16 sagetvopen/sagetv-server-opendct-java16:$cversion
docker push sagetvopen/sagetv-server-opendct-java16:$cversion
docker tag sagetvopen/sagetv-opendct sagetvopen/sagetv-opendct:$cversion
docker push sagetvopen/sagetv-opendct:$cversion
