#!/usr/bin/env bash

cd `dirname $0`
echo "Update to latest version of images..."
docker pull jenkins/jenkins
docker-compose pull
echo "Shutting down Jenkins Stack..."
docker-compose down
echo "Rebuilding and starting Jenkins Stack..."
docker-compose up --build -d
echo "Done."
docker-compose logs -f

