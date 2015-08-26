#!/bin/bash

JAVA_OPTS="-server -Xms512g -Xmx512g"

echo "Running lakitu with JAVA_OPTS ${JAVA_OPTS}"

java -jar /usr/local/lakitu/lakitu.jar $JAVA_OPTS

