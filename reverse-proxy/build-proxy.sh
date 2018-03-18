#!/usr/bin/env bash

cd `dirname $0`
DATE=$(date +%Y.%m.%d)
docker build nginx-proxy \
	--tag "kemitix/nginx-proxy:${DATE}" \
	--tag "kemitix/nginx-proxy:latest"
