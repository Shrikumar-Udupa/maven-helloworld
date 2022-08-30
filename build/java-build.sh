#!/bin/bash

#Copy new jar to build location
cp -f ./javaparser-maven-sample/target/*.jar /home/torus/jenkins/pipeline/build/

echo "Building docker image"
echo "************************"

cd build/ && docker-compose -f docker-compse-hello.ylm build

