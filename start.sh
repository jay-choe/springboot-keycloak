# Run dev image
set -xe

docker run -p 28080:8080 \
 -d \
 -e KEYCLOAK_ADMIN=admin \
 -e KEYCLOAK_ADMIN_PASSWORD=admin \
 quay.io/keycloak/keycloak:19.0.1 start-dev