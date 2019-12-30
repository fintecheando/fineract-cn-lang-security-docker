FROM openjdk:8-jdk-alpine

RUN apk add --update \
    curl \
    && rm -rf /var/cache/apk/*

WORKDIR /tmp

COPY lang-0.1.0-BUILD-SNAPSHOT.jar .

ENTRYPOINT /entrypoint.sh