# Run dev image
set -xe

echo "Starting keycloak server container...."

docker run -p 28080:8080 \
 -d \
 --name keycloak \
 -e KEYCLOAK_ADMIN=admin \
 -e KEYCLOAK_ADMIN_PASSWORD=admin \
 quay.io/keycloak/keycloak:19.0.1 start-dev

 echo "Starting Redis Container...."

 docker run -d \
 --name redis \
 -p 6379:6379 redis

# TODO: mig to docker-compose