#!/usr/bin/env bash

docker rm sagetv-build
docker run --name sagetv-build -t -v `pwd`/SOURCES:/build sagetvopen/sagetv-build
