export $(grep -v '^#' .env | xargs)
envsubst < traefik/service-home-assistant.yml.template > traefik/service-home-assistant.yml
docker compose up -d