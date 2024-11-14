#!/bin/bash

docker container stop project-name-phpmyadmin
docker container rm project-name-phpmyadmin
docker container stop project-name-mailhog
docker container rm project-name-mailhog
wp-env stop