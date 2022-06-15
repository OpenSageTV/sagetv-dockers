#!/usr/bin/env bash

# docker rm sagetv-buildbase
# docker run --name sagetv-buildbase -t -v `pwd`/SOURCES:/build sagetvopen/sagetv-buildbase

docker rm sagetv-buildbase
#docker run --name sagetv-buildbase -t -v /home/birch/projects:/build sagetvopen/sagetv-buildbase
#docker run --name sagetv-buildbase -t -v /unraid/datadrive/projects:/build sagetvopen/sagetv-buildbase
docker run --name sagetv-buildbase -t -v /unraid/datadrive/projects:/build --entrypoint=/bin/bash sagetvopen/sagetv-buildbase
