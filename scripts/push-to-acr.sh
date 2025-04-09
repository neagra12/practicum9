set -u

: "$VERSION"
: "$REGISTRY_URL"
: "$REGISTRY_USERNAME"
: "$REGISTRY_PASSWORD"

echo "${secrets.REGISTRY_PASSWORD}" | docker login "${secrets.REGISTRY_URL}" -u "${secrets.REGISTRY_USERNAME }" --password-stdin
docker tag ghcr.io/neagra12/prime-service:v1.0.0 ${secrets.REGISTRY_URL}/prime-service:v1.0.0
docker push ${secrets.REGISTRY_URL}/prime-service:v1.0.0


