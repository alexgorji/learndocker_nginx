#!/bin/bash

docker network create my-nginx-network
docker compose -f ./django-site1/docker-compose.yml up -d
docker compose -f ./site1/docker-compose.yml up -d
docker compose -f ./site2/docker-compose.yml up -d
docker compose -f ./vue-site-1/docker-compose.yml up -d
docker compose -f ./reverse_proxy/docker-compose.yml up -d
