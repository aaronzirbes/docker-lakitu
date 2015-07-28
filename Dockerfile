FROM java:8-jdk

MAINTAINER Aaron Zirbes <aaron@zirbes.org>

ENV LKT_ORG=com/mnclimbingcoop \
    LKT_BINTRAY_REPO=mnclimbingcoop/maven \
    LKT_VERSION=0.2.0 \
    LKT_API_KEY=open \
    LKT_AWS_SQS_PUSH=mncc-commands \
    LKT_AWS_SQS_PULL=mncc-state

RUN mkdir -p /usr/local/lakitu
ADD https://bintray.com/artifact/download/${LKT_BINTRAY_REPO}/${LKT_ORG}/lakitu/${LKT_VERSION}/lakitu-${LKT_VERSION}.jar /usr/local/lakitu/lakitu.jar
ADD start.sh /usr/local/lakitu
RUN chmod 0755 /usr/local/lakitu/start.sh

WORKDIR /usr/local/lakitu

EXPOSE 8080 8181
ENTRYPOINT ["start.sh"]
