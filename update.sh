#!/usr/bin/env bash

cd `dirname $0`
echo "Update to latest version of Jenkins..."
docker pull jenkins/jenkins:latest
echo "Shutting down Jenkins..."
docker-compose down
echo "Rebuilding and starting Jenkins..."
docker-compose up --build -d
echo "Done."
docker logs -f jenkins

