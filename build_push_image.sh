#!/bin/sh

# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1
docker build -t item-app:v1 .

# Melihat daftar image di lokal.
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub (atau GitHub Packages bila menerapkan saran keempat).
docker tag item-app:v1 zero4335/item-app:v1

# script untuk login ke Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u zero4335 --password-stdin

# Mengunggah image ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat).
docker push zero4335/item-app:v1


