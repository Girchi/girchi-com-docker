#!/bin/bash

FILE=../services/girchi-com-notifications-server/package-lock.json

docker exec -it  --user node girchi_node cp .env.dist .env

if [ -f "$FILE" ]; then
    docker exec -ti --user node girchi_node  npm ci
else
    docker exec -ti --user node girchi_node  npm i
fi
