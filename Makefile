BASE_TAG=$(shell git rev-parse --short HEAD)

IMAGE_NAME=chariot9/golang-infra
APP_NAME=golang-infra
GOLANG_TAG=1.13.7-alpine3.11

BUILD_BASE_ARGS=--build-arg APP_NAME=$(APP_NAME) --build-arg GOLANG_TAG=$(GOLANG_TAG)
BUILD_TEST_ARGS=--build-arg IMAGE_NAME=$(IMAGE_NAME) --build-arg BASE_TAG=$(BASE_TAG)
BUILD_ARGS=--build-arg IMAGE_NAME=$(IMAGE_NAME) --build-arg APP_NAME=$(APP_NAME) --build-arg BASE_TAG=$(BASE_TAG)

build-base:
	@echo "Building base image"
	docker build --rm -f build/base/Dockerfile $(BUILD_BASE_ARGS) -t $(IMAGE_NAME)-base:$(BASE_TAG) .

build-test:
	@echo "Building test image"
	docker build --rm -f build/test/Dockerfile $(BUILD_TEST_ARGS) -t $(IMAGE_NAME)-test:$(BASE_TAG) .

unit-test:
	@echo "Running unit tests"
	docker run --rm -i -v $(shell pwd)/report:/go/src/${APP_NAME}/report $(IMAGE_NAME)-test:$(BASE_TAG)

release:
	@echo "Building image"
	docker build --rm -f build/pro/Dockerfile $(BUILD_ARGS) -t $(IMAGE_NAME):$(BASE_TAG) .

publish:
	@echo "building publish image"

run:
	@echo "Running dev environment"
	docker run --rm -t \
		-p ${PORT}:8080 \
		-v `pwd`:/go/src/$(APP_NAME) \
		-w /go/src/$(APP_NAME) \
		golang:$(GOLANG_TAG) go run app/cmd/main.go
