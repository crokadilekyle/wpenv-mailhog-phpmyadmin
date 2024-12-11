#!/bin/bash

# args
# $1: network name
# $2: container name prefix

docker run -d \
  --name "${2}-mailhog" \
  -p 8025:8025 \
  -p 1025:1025 \
  --network "$1" \
  mailhog/mailhog
