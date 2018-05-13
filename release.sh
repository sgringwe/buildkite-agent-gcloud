#!/bin/sh

set -ex

USERNAME=sgringwe
IMAGE=buildkite-agent-gcloud

version=`cat VERSION`
echo "version: $version"

# run build
docker build -t $USERNAME/$IMAGE:latest .
docker tag $USERNAME/$IMAGE:latest $USERNAME/$IMAGE:$version

# push it
docker push $USERNAME/$IMAGE:latest
docker push $USERNAME/$IMAGE:$version