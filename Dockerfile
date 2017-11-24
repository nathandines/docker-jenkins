FROM jenkins/jenkins:latest

# Change user to root, as docker-in-docker won't work as the jenkins user (even
# with group addition), at least on Mac
USER root

RUN curl -fsSL get.docker.com | sh \
  && apt-get clean
