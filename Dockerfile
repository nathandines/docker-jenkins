FROM jenkins/jenkins:latest

# Change user to root, as docker-in-docker won't work as the jenkins user (even
# with group addition)
USER root

RUN curl -fsSL get.docker.com | sh
