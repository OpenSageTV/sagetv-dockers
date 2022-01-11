#!/usr/bin/env bash

if [ "$1" = "" ] ; then
    # if rebuilding comskip
    # docker build -t stuckless/comskip-build:latest comskip-build/
    # cp /tmp/Comskip/comskip ./sagetv-base/
    # chmod 775 sagetv-base/comskip
    # stop if any fail
	# get container version from the version file - update the file prior to running
	cversion=$(<containerversion) && \
	export cversion && \
    echo "Container version $cversion read from containerversion file"
    docker build --build-arg containerversion=$cversion -t sagetvopen/sagetv-base:latest sagetv-base/ && \
    docker build -t sagetvopen/sagetv-server-java8:latest sagetv-server-java8/ && \
    docker build -t sagetvopen/sagetv-server-java11:latest sagetv-server-java11/ && \
    docker build -t sagetvopen/sagetv-server-java16:latest sagetv-server-java16/ && \
    docker build -t sagetvopen/sagetv-opendct:latest sagetv-opendct/ && \
	export javanum=8 && \
	docker build --build-arg javaversion=$javanum -t sagetvopen/sagetv-server-opendct-java$javanum:latest sagetv-server-opendct/ && \
	export javanum=11 && \
	docker build --build-arg javaversion=$javanum -t sagetvopen/sagetv-server-opendct-java$javanum:latest sagetv-server-opendct/ && \
	export javanum=16 && \
	docker build --build-arg javaversion=$javanum -t sagetvopen/sagetv-server-opendct-java$javanum:latest sagetv-server-opendct/
    echo "Dockers are built"
else
    DOCKERDIR=`basename $1`
    docker build -t sagetvopen/${DOCKERDIR}:latest $1/
fi