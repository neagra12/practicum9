#!/bin/bash
set -e

: "${VERSION:=v1.0.0}"
echo "Logging into GitHub Container Registry..."
echo "$ACCESS_TOKEN" | docker login ghcr.io -u neagra12 --password-stdin

echo "Pushing image to ghcr.io/neagra12/prime-service:${VERSION}..."
docker push ghcr.io/neagra12/prime-service:${VERSION}
