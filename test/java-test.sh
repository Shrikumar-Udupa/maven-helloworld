#!/bin/bash
echo "*********************"
echo "Testing Jar"
docker run --rm -v $PWD/javaparser-maven-sample:/app -v /root/.m2/:/root/.m2 -w /app maven:3-alpine "$@"
