#!/bin/bash

#Deploy script for dev branch
    echo "Building image for dev branch ... "
    docker build -t reactapp  .
    docker login -u username -p dokcer_token
    docker tag reactapp dhanasekar787/dev
    docker push dhanasekar787/dev:latest