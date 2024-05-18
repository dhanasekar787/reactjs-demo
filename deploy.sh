#!/bin/bash
#set the image

#If  the branch is dev, build the image and push it to docker-hub dev repository

    echo "Building image for dev branch ... "
    docker build -t reactapp  .
    docker login -u  $DOCKERHUB_USR -p $DOCKERHUB_PSW
    docker tag reactapp sridharsaravana/dev
    docker push sridharsaravana/dev:latest

