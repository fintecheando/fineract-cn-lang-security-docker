#!/bin/sh

java -cp lang-0.1.0-BUILD-SNAPSHOT.jar org.apache.fineract.cn.lang.security.RsaKeyPairFactory UNIX > /tmp/env

cat env_variables >> /tmp/env