#!/usr/bin/env bash

set -eo pipefail

if [[ -z "$1" ]]; then
  echo "image name. Usage: packageBuildpack <image-name> <package-config-path>"
  exit 1
fi

if [[ -z "$2" ]]; then
  echo "package config required. Usage: packageBuildpack <image-name> <package-config-path>"
  exit 1
fi

BUILDPACK_NAME=$1
BUILDPACK_CONFIG=$2

pack package-buildpack "$BUILDPACK_NAME:latest" --package-config "$BUILDPACK_CONFIG"
