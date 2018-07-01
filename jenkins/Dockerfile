FROM kemitix/jenkins:latest
USER root
COPY git-core-ubuntu-ppa-artful.list /etc/apt/sources.list.d/
RUN apt-get update && \
	apt-get upgrade -y --allow-unauthenticated && \
	apt-get install -y --allow-unauthenticated \
		vim \
    nano \
		git \
		libxml-xpath-perl \
		rsync \
	&& \
	rm -rf /var/lib/apt/lists/*
COPY gitlab-branch-source.* /var/jenkins_home/plugins/
USER jenkins

