#!/bin/bash

docker network create my-nginx-network
docker compose -f ./demo-simple-django-site/docker-compose.yml up -d
docker compose -f ./demo-simple-html-site/docker-compose.yml up -d
docker compose -f ./demo-simple-vue-site/docker-compose.yml up -d
docker compose -f ./reverse_proxy/docker-compose.yml up -d
