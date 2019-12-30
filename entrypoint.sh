#!/bin/sh

> /tmp/fineract_env

java -cp lang-0.1.0-BUILD-SNAPSHOT.jar org.apache.fineract.cn.lang.security.RsaKeyPairFactory UNIX > /tmp/fineract_env

cat env_variables >> /tmp/fineract_env