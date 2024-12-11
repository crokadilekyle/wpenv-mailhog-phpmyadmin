#!/bin/bash
contaner_name_prefix=$(basename "$PWD")

wp-env start

if [ $? -ne 0 ]; then
  echo "wp-env failed to start. Exiting."
  exit 1
fi

network=$(docker container ps --format "{{.Networks}}" | head -n 1)
network_id=${network%_default}  # Remove '_default' from network

container=$(docker container ps --filter "name=${network_id}-mysql-1" --format "{{.ID}}")

bash phpmyadmin.sh "$network" "$container" "$contaner_name_prefix"
bash mailhog.sh "$network" "$contaner_name_prefix"
