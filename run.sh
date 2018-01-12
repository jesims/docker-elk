#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'
docker-compose stop
docker-compose config && docker-compose up -d
