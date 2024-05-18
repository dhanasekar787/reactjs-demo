#!/bin/bash
#set the image

#If  the branch is dev, build the image and push it to docker-hub dev repository

if [[ $GIT_BRANCH == "origin/dev" ]]; then
    echo "Building image for dev branch ... "
    docker build -t reactapp  .
    echo $DOCKERHUB_PSW | docker login -u  $DOCKERHUB_USR --password-stdin
    docker tag reactapp sridharsaravana/dev
    docker push sridharsaravana/dev:latest


elif [[ $GIT_BRANCH == "origin/prod" ]]; then
      echo "Building image for prod branch ..."
      docker build -t reactapp .
      echo $DOCKERHUB_PSW | docker login -u  $DOCKERHUB_USR --password-stdin
      docker tag reactapp sridharsaravana/prod
      docker push sridharsaravana/prod:latest
fi
