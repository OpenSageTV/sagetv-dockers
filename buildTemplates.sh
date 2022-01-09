#!/usr/bin/env bash

TEMPLATE_SRC=unRAID/template/
TEMPLATE_OUT=unRAID/sagetvopen-sagetv/
. ${TEMPLATE_SRC}/./VARS.sh

export CONTAINER="sagetv-server"
export CONTAINER_POSTFIX="java8"
export BETA="False"
export OPENDCT=""
cat ${TEMPLATE_SRC}/sagetv-server.xml.hbs | ${TEMPLATE_SRC}/mo > ${TEMPLATE_OUT}/${CONTAINER}-${CONTAINER_POSTFIX}.xml

export CONTAINER_POSTFIX="java11"
export BETA="False"
export OPENDCT=""
cat ${TEMPLATE_SRC}/sagetv-server.xml.hbs | ${TEMPLATE_SRC}/mo > ${TEMPLATE_OUT}/${CONTAINER}-${CONTAINER_POSTFIX}.xml

export CONTAINER_POSTFIX="java16"
export BETA="False"
export OPENDCT=""
cat ${TEMPLATE_SRC}/sagetv-server.xml.hbs | ${TEMPLATE_SRC}/mo > ${TEMPLATE_OUT}/${CONTAINER}-${CONTAINER_POSTFIX}.xml

export CONTAINER="sagetv-server-opendct"
export CONTAINER_POSTFIX="java8"
export BETA="False"
export OPENDCT="True"
cat ${TEMPLATE_SRC}/sagetv-server.xml.hbs | ${TEMPLATE_SRC}/mo > ${TEMPLATE_OUT}/${CONTAINER}-${CONTAINER_POSTFIX}.xml

export CONTAINER_POSTFIX="java11"
export BETA="False"
export OPENDCT="True"
cat ${TEMPLATE_SRC}/sagetv-server.xml.hbs | ${TEMPLATE_SRC}/mo > ${TEMPLATE_OUT}/${CONTAINER}-${CONTAINER_POSTFIX}.xml

export CONTAINER_POSTFIX="java16"
export BETA="False"
export OPENDCT="True"
cat ${TEMPLATE_SRC}/sagetv-server.xml.hbs | ${TEMPLATE_SRC}/mo > ${TEMPLATE_OUT}/${CONTAINER}-${CONTAINER_POSTFIX}.xml

export CONTAINER="sagetv-opendct"
export CONTAINER_POSTFIX=""
export BETA="False"
cat ${TEMPLATE_SRC}/sagetv-opendct.xml.hbs | ${TEMPLATE_SRC}/mo > ${TEMPLATE_OUT}/${CONTAINER}.xml

