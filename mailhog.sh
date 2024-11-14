#!/bin/bash

# args
# $1: network name

docker run -d \
  --name project-name-mailhog \
  -p 8025:8025 \
  -p 1025:1025 \
  --network "$1" \
  mailhog/mailhog
