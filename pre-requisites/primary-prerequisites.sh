#!/bin/bash

# Root User Check
if [ "$(id -u)" != "0" ]; then
        echo "This script must run using root user"
        exit 1
fi

# Determind The Linux Distribution running on 
# Categorises RHEL or Debian 
if [ -f /etc/redhat-release ]; then
        echo "redhat detected"
        if [ `sudo httpd -v > /dev/null && echo $? -eq "0"` ]; then
                echo "Apache found"
                else
                        echo "Apache Not Installed"
                        exit 1
        fi
        # could be more optimzed. ser a variable is_instlled = true if installed, and then use a single condition to exit
        elif [ -f /etc/debian_version ]; then
                echo "Debian based os"
                if [ `sudo apache2 -v > /dev/null && echo $? -eq "0"` ]; then
                        echo "Apache found"
                else
                        echo "Apache Not Installed"
                        exit 1
fi

# Checks whether index.html is present
if [ ! -f /var/www/index.html ]; then
    echo "HTML index file not found"
    exit 1
fi

