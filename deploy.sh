#!/bin/bash
#set the image

#If  the branch is dev, build the image and push it to docker-hub dev repository

    echo "Building image for dev branch ... "
    docker build -t reactapp  .
    docker login -u sridharsaravana -p dckr_pat_fm9zwkuBm0qOstqPurVhQss74zg
    docker tag reactapp sridharsaravana/dev
    docker push sridharsaravana/dev:latest

