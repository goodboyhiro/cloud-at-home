export $(grep -v '^#' .env | xargs)
envsubst < traefik/service-home-assistant.template.yml > traefik/service-home-assistant.yml
docker compose up -d