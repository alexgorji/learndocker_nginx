#!/bin/bash
docker compose -f ./reverse_proxy/docker-compose.yml down
docker compose -f ./demo-simple-vue-site/docker-compose.yml down
docker compose -f ./demo-simple-django-site/docker-compose.yml down
docker compose -f ./demo-simple-html-site/docker-compose.yml down

docker network rm my-nginx-network