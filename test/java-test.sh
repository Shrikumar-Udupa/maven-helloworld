#!/bin/bash
echo "*********************"
echo "Testing Jar"
WORKSPACE=WORKSPACE=/home/torus/jenkins/jenkins_home/workspace/Torus-pipeline

docker run --rm -v $WORKSPACE/javaparser-maven-sample:/app -v /root/.m2/:/root/.m2 -w /app maven:3-alpine "$@"
