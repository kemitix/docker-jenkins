FROM jenkins/jenkins:latest
#COPY jenkins-plugins.txt /usr/share/jenkins/ref/jenkins-plugins.txt
#RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/jenkins-plugins.txt
USER root
#RUN add-apt-repository -y ppa:git-core/ppa
COPY git-core-ubuntu-ppa-artful.list /etc/apt/sources.list.d/
RUN apt-get update && apt-get upgrade -y --allow-unauthenticated && apt-get install -y --allow-unauthenticated git nmap tree
USER jenkins

