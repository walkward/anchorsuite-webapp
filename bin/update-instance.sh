#!/bin/bash

# Create folders for files being uploaded
gcloud compute ssh $npm_package_config_gcloud_instance --zone $npm_package_config_gcloud_zone \
  --command='mkdir -p /home/walker/odoo' \
  --command='mkdir -p /home/walker/odoo/config'

# Copy files from local directory to remote
gcloud compute scp ~/Desktop/anchorsuite-docker/entrypoint.sh $npm_package_config_gcloud_instance:/home/walker/odoo --zone $npm_package_config_gcloud_zone
gcloud compute scp ~/Desktop/anchorsuite-docker/Dockerfile $npm_package_config_gcloud_instance:/home/walker/odoo --zone $npm_package_config_gcloud_zone
gcloud compute scp ~/Desktop/anchorsuite-docker/config/odoo.conf $npm_package_config_gcloud_instance:/home/walker/odoo/config --zone $npm_package_config_gcloud_zone
gcloud compute scp ~/Desktop/anchorsuite-docker/config/dockercfg_update.sh $npm_package_config_gcloud_instance:/home/walker/odoo/config --zone $npm_package_config_gcloud_zone

# Update cloud-config file on instances metadata
gcloud compute instances add-metadata $npm_package_config_gcloud_instance --metadata-from-file user-data=config/cloud-config.yaml
