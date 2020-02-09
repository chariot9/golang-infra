ARG GOLANG_TAG
FROM golang:${GOLANG_TAG}

RUN apk --update add git openssh curl && \
  rm -rf /var/lib/apt/lists/* && \
  rm /var/cache/apk/*

ARG APP_NAME
WORKDIR /go/src/${APP_NAME}
ADD . ./app

RUN ls -la && go mod download