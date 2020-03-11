#!/bin/bash

FILE=../services/girchi-com-notifications-server/package-lock.json

if [-f "$FILE"]; then
    docker exec -ti girchi_node npm ci
else
    docker exec -ti girchi_node npm i
fi
