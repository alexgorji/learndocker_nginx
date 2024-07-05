#!/bin/bash
docker compose -f ./reverse_proxy/docker-compose.yml down
docker compose -f ./vue-site-1/docker-compose.yml down
docker compose -f ./django-site1/docker-compose.yml down
docker compose -f ./site1/docker-compose.yml down
docker compose -f ./site2/docker-compose.yml down

docker network rm my-nginx-network