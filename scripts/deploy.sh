#!/bin/bash
set -eu  # fail on unset variables and any error

# Match the variables actually used in the deploy.yaml
: "${REGISTRY_URL:?Missing REGISTRY_URL}"
: "${VERSION:?Missing VERSION}"
: "${DATASOURCE_URL:?Missing DATASOURCE_URL}"
: "${DATASOURCE_UN:?Missing DATASOURCE_UN}"
: "${DATASOURCE_PW:?Missing DATASOURCE_PW}"

echo "Deploying prime-service..."
echo "Using image: $REGISTRY_URL/prime-service:$VERSION"
echo "Using database: $DATASOURCE_URL"

# Substitute variables and apply manifest
envsubst < ./scripts/kubernetes/deploy.yaml | kubectl apply -f - --validate=false
