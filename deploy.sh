#!/bin/bash

#Deploy script for dev branch
    echo "Building image for dev branch ... "
    docker build -t reactapp  .
    docker login -u username -p dokcer_token
    docker tag reactapp sridharsaravana/dev
    docker push sridharsaravana/dev:latest

