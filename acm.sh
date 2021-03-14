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
source pre-requisites/database_dump.sh

# import aws-setup
source aws-account-setup/configure-user.sh
source aws-account-setup/aws-elements.sh

# Executing pre-requisites

check_distro_apache
check_web_file
check_mysql
install_packages
apache_files_zip
mysql_database_dumping
display_file_size


# Executing aws-account-setup

configure_user
verify_user_id
create_s3_bucket
upload_web_files
upload_database_dump

# print_current_time