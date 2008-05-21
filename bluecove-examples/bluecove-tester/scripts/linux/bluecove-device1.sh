#!/bin/sh
# @version $Revision$ ($Author$) $Date$
#
SCRIPTS_DIR=`dirname ${0}`/..
. ${SCRIPTS_DIR}/environment.sh

JVM_ARGS="-Dbluecove.deviceID=1"
#JVM_ARGS="${JVM_ARGS} -Dbluecove.debug=1"

java ${JVM_ARGS} -cp ${BLUECOVE_TESTER_APP_JAR} net.sf.bluecove.awt.Main
rc=$?
if [ ! "${rc}" = "0" ]; then
    echo Error calling java
    echo Prsess enter to exit
    read
fi