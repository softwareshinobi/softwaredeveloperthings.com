#!/bin/bash

##

reset

clear

##

set -e

set -x

##

##docker-compose -f docker-compose.yaml down --remove-orphans

##docker-compose -f docker-compose.yaml up -d

docker-compose down

docker-compose up
