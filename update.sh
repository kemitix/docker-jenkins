#!/usr/bin/env bash

cd `dirname $0`
echo "Update to latest version of images..."
(cd jenkins && ./build-jenkins.sh)
docker-compose pull
echo "Rebuilding and starting Jenkins Stack..."
docker-compose up --build -d
echo "Updating maven settings.xml"
if test -f maven-settings.xml ; then
    docker cp maven-settings.xml jenkins:/var/jenkins_home/.m2/settings.xml
fi
echo "Done."

