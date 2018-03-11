FROM jenkins/jenkins:latest
USER root
COPY git-core-ubuntu-ppa-artful.list /etc/apt/sources.list.d/
RUN apt-get update && apt-get upgrade -y --allow-unauthenticated && apt-get install -y --allow-unauthenticated git git-flow nmap tree libxml-xpath-perl rsync
USER jenkins

