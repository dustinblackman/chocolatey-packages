#!/usr/bin/env bash

set -e

export DOCKER_DEFAULT_PLATFORM=linux/amd64
APP="$1"

docker build -t choco-deploy:local .
docker run -it --rm -v "$PWD/$APP:/app" -w "/app" -e "CHOCOLATEY_KEY=${CHOCOLATEY_KEY}" choco-deploy:local /usr/bin/publish.sh
