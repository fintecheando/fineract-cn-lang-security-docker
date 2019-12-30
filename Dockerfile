FROM openjdk:8-jdk-alpine

RUN apk add --update \
    curl \
    && rm -rf /var/cache/apk/*

WORKDIR /tmp

COPY lang-0.1.0-BUILD-SNAPSHOT.jar .

COPY lang-0.1.0-BUILD-SNAPSHOT.jar .

ADD ./entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT /entrypoint.sh