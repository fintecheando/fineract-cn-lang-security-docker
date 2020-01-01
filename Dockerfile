FROM openjdk:8-jdk-alpine

RUN apk add --update \
    curl \
    && rm -rf /var/cache/apk/*

COPY lang-0.1.0-BUILD-SNAPSHOT.jar .

COPY entrypoint.sh .

COPY env_variables .

RUN chmod +x /entrypoint.sh

ENTRYPOINT /entrypoint.sh