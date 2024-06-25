#!/bin/bash
#Image name
Docker_Image="reactapp"

#Build the image
 docker build -t $Docker_Image .

 #Tag the image
 docker tag $Docker_Image dhanadev/$Docker_Image
