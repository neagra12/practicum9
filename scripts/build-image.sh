set -u

: "${VERSION:=v1.0.0}"
docker build -t ghcr.io/neagra12/prime-service:v1.0.0 .
