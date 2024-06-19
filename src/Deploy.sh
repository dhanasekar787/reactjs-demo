#!/bin/bash

#Deploy script for dev branch
    echo "Building image for dev branch ... "
    docker build -t reactapp  .
    docker login -u username -p docker_token
    docker tag reactapp dhanadev/dev
    docker push dhanadev/dev:latest