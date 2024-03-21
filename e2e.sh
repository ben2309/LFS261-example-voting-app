#!/bin/bash 

cd e2e 

docker compose down > /dev/null 2>&1 

sleep 1

docker compose build

sleep 5 
docker compose up -d 
sleep 5
docker compose ps
sleep 10
docker compose run --rm e2e

docker compose down 

