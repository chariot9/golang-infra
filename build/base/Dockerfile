ARG GOLANG_TAG
FROM golang:${GOLANG_TAG} as build-env

RUN apk --update add git openssh curl && \
  rm -rf /var/lib/apt/lists/* && \
  rm /var/cache/apk/*

ARG APP_NAME
WORKDIR /go/src/${APP_NAME}
ADD . .

RUN go mod download