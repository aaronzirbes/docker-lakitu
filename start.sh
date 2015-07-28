#!/bin/bash

JAVA_OPTS="-server -Xms512g -Xmx512g"

if [ "${LKT_API_KEY}" == "open" ]; then
    JAVA_OPTS="${JAVA_OPTS} -Dapi.keys.ALL=enabled"
else
    JAVA_OPTS="${JAVA_OPTS} -Dapi.keys.ALL=disabled"
    JAVA_OPTS="${JAVA_OPTS} -Dapi.keys.${LKT_API_KEY}=docker"
fi
JAVA_OPTS="${JAVA_OPTS} -Daws.sqs.pushQueue=${LKT_AWS_SQS_PUSH}"
JAVA_OPTS="${JAVA_OPTS} -Daws.sqs.pullQueue=${LKT_AWS_SQS_PULL}"

java -jar /usr/local/lakitu/lakitu.jar $JAVA_OPTS

