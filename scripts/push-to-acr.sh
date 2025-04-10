#!/bin/bash
set -e

: "${VERSION:=v1.0.0}"
: "${REGISTRY_URL:?Need to set REGISTRY_URL}"
: "${REGISTRY_USERNAME:?Need to set REGISTRY_USERNAME}"
: "${REGISTRY_PASSWORD:?Need to set REGISTRY_PASSWORD}"

echo "Logging into Azure Container Registry: $REGISTRY_URL"
echo "$REGISTRY_PASSWORD" | docker login "$REGISTRY_URL" -u "$REGISTRY_USERNAME" --password-stdin

echo "Pushing Docker image to ACR..."
docker push "$REGISTRY_URL/prime-service:$VERSION"
