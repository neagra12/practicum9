set -u

: "${VERSION:=v1.0.0}"


echo "${secrets.ACCESS_TOKEN}" | docker login ghcr.io -u neagra12 --password-stdin

docker push ghcr.io/neagra12/prime-service:v1.0.0
