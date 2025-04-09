#!/bin/bash
set -u

# Use VERSION from env or default to v1.0.0
: "${VERSION:=v1.0.0}"

echo "Building Docker image: ghcr.io/neagra12/prime-service:${VERSION}"
docker build -t ghcr.io/neagra12/prime-service:${VERSION} .
