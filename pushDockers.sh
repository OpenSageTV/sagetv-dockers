#!/usr/bin/env bash

docker login --username=jusjoken

docker push sagetvopen/sagetv-base
docker push sagetvopen/sagetv-server-java8
docker push sagetvopen/sagetv-server-java11
docker push sagetvopen/sagetv-server-java16
