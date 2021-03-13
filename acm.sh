#!/bin/bash

# Root User Check
if [ "$(id -u)" != "0" ]; then
    echo "This script must run using root user"
    exit 1
fi

echo "proceed"
# Importing pre-requisites
source pre-requisites/primary-prerequisites.sh
source pre-requisites/file_compression.sh

# import aws-account-setup
source aws-account-setup/configure-user.sh
source aws-account-setup/verify-user.sh

# Executing pre-requisites
check_distro_apache
check_web_file
install_packages

# Executing aws-account-setup
configure_user
verify_user_id
