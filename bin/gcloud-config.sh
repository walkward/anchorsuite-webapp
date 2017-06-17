#!/bin/bash
gcloud config configurations activate $npm_package_config_gcloud_configuration

# [CORE CONFIGURATION]
CORE="gcloud config set core"

$CORE/account $npm_package_config_gcloud_account
$CORE/project $npm_package_config_gcloud_project
# $CORE/custom_ca_certs_file
# $CORE/default_regional_backend_service
# $CORE/disable_color
# $CORE/disable_prompts
# $CORE/disable_usage_reporting
# $CORE/log_http
# $CORE/max_log_days
# $CORE/pass_credentials_to_gsutil
# $CORE/trace_token
# $CORE/user_output_enabled
# $CORE/verbosity

# [APP CONFIGURATION]
APP="gcloud config set app"

# $APP/cloud_build_timeout
# $APP/promote_by_default
# $APP/stop_previous_version

# [auth CONFIGURATION]
AUTH="gcloud config set core"

# $AUTH/disable_credentials

# [component_manager CONFIGURATION]
COMPONENT_MANAGER="gcloud config set component_manager"

# $COMPONENT_MANAGER/additional_repositories \\ A comma separated list of additional repositories to check for components.
# $COMPONENT_MANAGER/disable_update_check \\ If True, the Cloud SDK will not automatically check for updates.

# [compute CONFIGURATION]
COMPUTE="gcloud config set compute"

# $COMPUTE/region // The default region to use when working with regional Compute Engine resources.
$COMPUTE/zone $npm_package_config_gcloud_zone

# [container CONFIGURATION]
CONTAINER="gcloud config set container"

# $CONTAINER/build_timeout // The timeout, in seconds, to wait for container builds to complete.
$CONTAINER/cluster $npm_package_config_gcloud_cluster
# $CONTAINER/use_application_default_credentials // Use application default credentials to authenticate to the cluster API server.
# $CONTAINER/use_client_certificate // Use the cluster's client certificate to authenticate to the cluster API server.

# [functions CONFIGURATION]
FUNCTIONS="gcloud config set functions"

# $FUNCTIONS/region // The default region to use when working with Google Compute functions resources.

# [ml_engine CONFIGURATION]
ML_ENGINE="gcloud config set ml_engine"

# $ML_ENGINE/polling_interval // The interval (in seconds) at which to poll logs from your Cloud ML Engine jobs. Note that making it much faster than the default (60) will quickly use all of your quota.

# [proxy CONFIGURATION]
PROXY="gcloud config set proxy"

# $PROXY/address // The hostname or IP address of your proxy server.
# $PROXY/password // If your proxy requires authentication, the password to use when connecting.
# $PROXY/port // The port to use when connected to your proxy server.
# $PROXY/type // The type of proxy you are using. Supported proxy types are: [http, http_no_tunnel, socks4, socks5].
# $PROXY/username // If your proxy requires authentication, the username to use when connecting.

# [spanner CONFIGURATION]
SPANNER="gcloud config set spanner"

# $SPANNER/instance // The default instance to use when working with Cloud Spanner resources. When an instance is required but not provided by a flag, the command will fall back to this value, if set.

# Ensure that everything is running on the correct credentails
gcloud auth application-default login

# auth
# beta
# components
# compute
# config
# container
# dataflow
# dataproc
# datastore
# debug
# deployment-manager
# dns
# firebase
# iam
# kms
# ml-engine
# organizations
# projects
# service-management
# source
# spanner
# sql
# topic
