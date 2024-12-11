#!/bin/bash
container_name_prefix=$(basename "$PWD")

docker container stop "${container_name_prefix}-phpmyadmin"
docker container rm "${container_name_prefix}-phpmyadmin"
docker container stop "${container_name_prefix}-mailhog"
docker container rm "${container_name_prefix}-mailhog"
wp-env stop
