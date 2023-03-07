#!/bin/sh

# Perintah untuk build Docker image dari berkas Dockerfile yang disediakan dengan nama <username-docker>/karsajobs:lates
docker build -t zero4335/karsajobs:lates .

# Perintah untuk login ke Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u zero4335 --password-stdin

# Perintah untuk push image ke Docker Hub
docker push zero4335/karsajobs:lates