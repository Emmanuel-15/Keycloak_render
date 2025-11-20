FROM quay.io/keycloak/keycloak:latest

# Memory limits
ENV KC_JAVA_OPTS="-Xms256m -Xmx512m -XX:MaxMetaspaceSize=256m"

# Your existing env vars...
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin
ENV KC_DB=mysql
ENV KC_DB_URL_HOST=64.227.128.119
ENV KC_DB_URL_PORT=3306
ENV KC_DB_URL_DATABASE=keycloak
ENV KC_DB_USERNAME=hrms_test
ENV KC_DB_PASSWORD=rooT@3225
ENV KC_HOSTNAME_STRICT=false
ENV KC_PROXY=edge
ENV KC_HTTP_ENABLED=true
ENV KC_HTTP_PORT=10000

# Match the port
EXPOSE 10000

RUN /opt/keycloak/bin/kc.sh build --db=mysql
CMD ["start-dev"]
