#!/bin/bash

# Generate the KEYS

java -cp /tmp/lang-0.1.0-BUILD-SNAPSHOT.jar org.apache.fineract.cn.lang.security.RsaKeyPairFactory UNIX > /tmp/.env

cat /tmp/env_variables >> /tmp/.env