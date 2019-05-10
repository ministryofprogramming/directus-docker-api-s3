#!/bin/bash

# Environment
export TARGET_IMAGE=${TARGET_IMAGE_API:-"ministryofprogramming/directus-api-s3"}
export PROJECT_TAG=latest

# Docker Hub credentials.
export DOCKER_USERNAME=ministryofprogramming
export DOCKER_PASSWORD=<password-here>

# Build and push
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker build --tag "${TARGET_IMAGE}:${PROJECT_TAG}" .
docker push "${TARGET_IMAGE}:${PROJECT_TAG}"