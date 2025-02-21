FROM jenkins/jenkins:jdk17

USER root
RUN apt update && apt install -y python3 python3-pip
USER jenkins

