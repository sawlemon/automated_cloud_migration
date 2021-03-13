#!/bin/bash

# Root User Check
if [ "$(id -u)" != "0" ]; then
        echo "This script must run using root user"
        exit 1
fi

# Importing files
source ./pre-requisites/primary-prerequisites.sh
source ./pre-requisites/file_compression.sh
