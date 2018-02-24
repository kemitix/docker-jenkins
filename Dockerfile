FROM jenkins/jenkins:latest
#COPY jenkins-plugins.txt /usr/share/jenkins/ref/jenkins-plugins.txt
#RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/jenkins-plugins.txt
USER root
RUN apt-get update && apt-get upgrade -y
#&& apt-get install -y ?
USER jenkins

