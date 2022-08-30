#!/bin/bash

echo "*****************"
echo "Pushing maven-helloworld image"
echo "*****************"

IMAGE="maven-helloworld"

echo "*****************"
echo "Docker login"
echo "*****************"
docker login -u shrikumarudupa -p $PASS

echo "*****************"
echo "Tag image"
echo "*****************"
docker tag $IMAGE:$BUILD_TAG shrikumarudupa/$IMAGE:$BUILD_TAG 

echo "*****************"
echo "Push $IMAGE"
echo "*****************"
docker push shrikumarudupa/$IMAGE:$BUILD_TAG

