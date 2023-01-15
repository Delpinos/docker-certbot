#!/bin/bash

DOCKER_IMAGE="${DOCKER_IMAGE:="delpinos/certbot"}"

if [ "$1" ]; then
    DOCKER_TAG="$1"
else
    DOCKER_TAG="${DOCKER_TAG:="latest"}"
fi

docker push $DOCKER_IMAGE:$DOCKER_TAG
