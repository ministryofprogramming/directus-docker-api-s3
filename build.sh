#!/bin/bash

# Environment
export TARGET_IMAGE=${TARGET_IMAGE_API:-"ministryofprogramming/directus-api-s3"}
export PROJECT_TAG=2.4.0

# Docker Hub credentials.
export DOCKER_USERNAME=<username>
export DOCKER_PASSWORD=<password>

# Build and push
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker build --tag "${TARGET_IMAGE}:${PROJECT_TAG}" .
docker push "${TARGET_IMAGE}:${PROJECT_TAG}"
