#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"

DOCKER_IMAGE="${DOCKER_IMAGE:="delpinos/certbot"}"

if [ "$1" ]; then
    DOCKER_TAG="$1"
else
    DOCKER_TAG="${DOCKER_TAG:="latest"}"
fi

docker build -t $DOCKER_IMAGE:$DOCKER_TAG $SCRIPT_DIR
