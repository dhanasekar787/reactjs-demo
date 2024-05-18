#!/bin/bash
#set the image

IMAGENAME="reactapp"
BRANCH="$(git rev-parse --abbrev-ref HEAD)"
  #If  the branch is dev, build the image and push it to docker-hub dev repository

if [ [$GIT_BRANCH == "origin/dev" ]]; then
    echo "Building image for dev branch ... "
    docker build -t $IMAGENAME .
    echo $DOCKERHUB_CREDENTIALS_Sridhar@98 | docker login -u  $DOCKERHUB_CREDENTIALS_sridahrsaravana --password-stdin
    docker tag reactapp sridharsaravana/dev
    docker push sridharsaravana/dev:latest
    docker logout


elif [ "$BRANCH" == "prod" ]; then
      echo "Building image for prod branch ..."
      docker build -t $IMAGENAME .
      echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u  $DOCKERHUB_CREDENTIALS_USR --password-stdin
      docker tag reactapp sridharsaravana/prod
      docker push sridharsaravana/prod:latest
      docker logout

fi
