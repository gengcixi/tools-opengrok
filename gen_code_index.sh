#!/bin/bash

OPENGROK_ROOT=`pwd`
export JAVA_HOME=${OPENGROK_ROOT}/jdk-17.0.1
export JRE_HOME=${JAVA_HOME}/jre  
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib  
export PATH=${JAVA_HOME}/bin:$PATH

CTAGS_TOOL=${OPENGROK_ROOT}/ctags
OPEN_TOOL=${OPENGROK_ROOT}/opengrok-1.7.21/lib/opengrok.jar
CODE_ROOT=${OPENGROK_ROOT}/index/
DATA_ROOT=${OPENGROK_ROOT}/data
CONFIG_FILE=${OPENGROK_ROOT}/etc/configuration.xml

java -Xmx3g  -jar ${OPEN_TOOL} -c ${CTAGS_TOOL} -s ${CODE_ROOT} -d $DATA_ROOT -H -P -S -G -v \
-W $CONFIG_FILE -U http://localhost:8080/source -m 256
