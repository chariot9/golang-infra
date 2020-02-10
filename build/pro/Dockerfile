ARG BASE_TAG
ARG IMAGE_NAME
FROM ${IMAGE_NAME}-base:${BASE_TAG}

# Compile binary
ARG APP_NAME
RUN go build app/cmd/main.go

HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
  CMD curl -f http://localhost/health || exit 1

# Document that the service listens on port 80.
EXPOSE 8080

# Run program
ENTRYPOINT ["./main"]