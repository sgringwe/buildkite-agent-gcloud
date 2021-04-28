#!/bin/sh

set -ex

PROJECT=handshake-test
IMAGE=buildkite-agent-gcloud

version=`cat VERSION`
echo "version: $version"

# run build
docker build -t gcr.io/$PROJECT/$IMAGE:latest .
docker tag gcr.io/$PROJECT/$IMAGE:latest gcr.io/$PROJECT/$IMAGE:$version

# push it
docker push gcr.io/$PROJECT/$IMAGE:latest
docker push gcr.io/$PROJECT/$IMAGE:$version
