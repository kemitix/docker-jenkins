#!/usr/bin/env bash

VERSION=$(curl -q -fsSL https://repo.jenkins-ci.org/releases/org/jenkins-ci/main/jenkins-war/maven-metadata.xml | xpath -q -e '/metadata/versioning/latest/text()')

SHA=$(curl -q -fsSL "https://repo.jenkins-ci.org/releases/org/jenkins-ci/main/jenkins-war/${VERSION}/jenkins-war-${VERSION}.war.sha256" )

docker build jenkins-docker \
	--build-arg JENKINS_VERSION=${VERSION} \
	--build-arg JENKINS_SHA=${SHA} \
	--tag "kemitix/jenkins:${VERSION}" \
	--tag "kemitix/jenkins:latest"
