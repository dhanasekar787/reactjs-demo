#!/bin/bash
#Image name
IMAGENAME="reactapp"

#Build the image
 docker build -t $IMAGENAME .

 #Tag the image
 docker tag $IMAGENAME sridharsaravana/$IMAGENAME