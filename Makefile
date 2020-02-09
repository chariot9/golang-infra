BASE_TAG=$(shell git rev-parse --short HEAD)

IMAGE_NAME=chariot9/golang-infra
APP_NAME=golang-infra
GOLANG_TAG=1.13.7-alpine3.11

BUILD_BASE_ARGS=--build-arg APP_NAME=$(APP_NAME) --build-arg GOLANG_TAG=$(GOLANG_TAG)

build-base:
	@echo "Building base image"
	docker build --rm -f build/base/Dockerfile $(BUILD_BASE_ARGS) -t $(IMAGE_NAME)-base:$(BASE_TAG) .

build:
	@echo "Building image"

publish:
	@echo "building publish image"

unit-test:
	@echo "Running unit tests"

run:
	@echo "Running"
