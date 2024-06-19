#!/bin/bash

#Deploy script for dev branch
    echo "Building image for dev branch ... "
    docker build -t reactapp  .
    docker login -u username -p dokcer_token
    docker tag reactapp dhanadev/prod
    docker push dhanadev/prod:latest