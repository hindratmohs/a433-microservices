#!/bin.sh

docker build -t zero4335/karsajobs-ui:latest .

echo $PASSWORD_DOCKER_HUB | docker login -u zero4335 --password-stdin

docker push zero4335/karsajobs-ui:latest