#!/bin/bash
set -u  # fail on unset variables

# Match the names from GitHub Actions env:
: "$REGISTRY_URL"
: "$VERSION"
: "$SPRING_DATASOURCE_URL"
: "$SPRING_DATASOURCE_USERNAME"
: "$SPRING_DATASOURCE_PASSWORD"

# Run deployment by substituting env vars in the manifest
envsubst < ./scripts/kubernetes/deploy.yaml | kubectl apply -f - --validate=false
