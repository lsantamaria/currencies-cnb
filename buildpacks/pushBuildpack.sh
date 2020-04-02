#!/usr/bin/env bash

set -eo pipefail

if [[ -z "$1" ]]; then
  echo "name required. Usage: pushBuildpack <name> <version>"
  exit 1
fi

if [[ -z "$2" ]]; then
  echo "version required. Usage: pushBuildpack <name> <version>"
  exit 1
fi

APP_NAME=$1
TAG=$2
DOCKER_REPO="lsantamaria"

docker tag "$APP_NAME:latest" "$DOCKER_REPO/$APP_NAME:$TAG"

docker push "$DOCKER_REPO/$APP_NAME:$TAG"
