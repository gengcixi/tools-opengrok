#!/bin/bash

INSTALL_ROOT=`pwd`
export JAVA_HOME=${INSTALL_ROOT}/jdk-17.0.1
export JRE_HOME=${JAVA_HOME}/jre  
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib  
export PATH=${JAVA_HOME}/bin:$PATH

sudo rm -rf /usr/bin/java
sudo rm -rf /usr/bin/javac
sudo ln -s ${JAVA_HOME}/bin/java /usr/bin/java
sudo ln -s ${JAVA_HOME}/bin/java /usr/bin/javac
sudo mkdir -p /var/opengrok/etc/
sudo rm -rf /var/opengrok/etc/configuration.xml
sudo ln -s ${INSTALL_ROOT}/etc/configuration.xml /var/opengrok/etc/configuration.xml

