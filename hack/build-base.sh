#!/usr/bin/env bash

BASE_TAG=$(git rev-parse --short HEAD)
IMAGE_NAME=chariot9/golang-infra
APP_NAME=golang-infra
GOLANG_TAG=1.9.2-alpine

BUILD_BASE_ARGS=--build-arg APP_NAME=${APP_NAME} --build-arg GOLANG_TAG=${GOLANG_TAG}

echo "Building base image"
echo ${BASE_TAG}