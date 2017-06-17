#!/bin/bash
# Script for building image to use locally or live

# Tag Bump patch
LATEST_TAG=$(npm version patch)

# Build Docker Image
docker build -t walkward/$npm_package_config_image_name:$LATEST_TAG .
# Tag image for Google Registry
docker tag walkward/$npm_package_config_image_name:$LATEST_TAG gcr.io/$npm_package_config_gcloud_project/$npm_package_config_image_name:$LATEST_TAG
docker tag walkward/$npm_package_config_image_name:$LATEST_TAG gcr.io/$npm_package_config_gcloud_project/$npm_package_config_image_name:latest
# Push Docker Image
docker push walkward/$npm_package_config_image_name
# Push Image to Google Registry
gcloud docker -- push gcr.io/$npm_package_config_gcloud_project/$npm_package_config_image_name:$LATEST_TAG
