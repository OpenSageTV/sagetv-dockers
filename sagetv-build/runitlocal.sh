#!/usr/bin/env bash

# docker rm sagetv-build
# docker run --name sagetv-build -t -v `pwd`/SOURCES:/build sagetvopen/sagetv-build

docker rm sagetv-build
docker run --name sagetv-build -t -v /home/birch/projects/sagetv:/build sagetvopen/sagetv-build
