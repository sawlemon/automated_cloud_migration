#!/bin/bash

# Root User Check
if [ "$(id -u)" != "0" ]; then
        echo "This script must run using root user"
        exit 1
fi

# Determind The Linux Distribution running on 
# Categorises RHEL or Debian
check_distro_apache(){
    if [ -f /etc/redhat-release ]; then
        echo "redhat detected"
        if [ `sudo httpd -v &> /dev/null && echo $? -eq "0"` ]; then
            echo "Apache found"
        else
            echo "Apache Not Installed"
            exit 1
        fi
        # could be more optimzed. ser a variable is_instlled = true if installed, and then use a single condition to exit
    elif [ -f /etc/debian_version ]; then
        echo "Debian based os"
        if [ `sudo apache2 -v &> /dev/null && echo $? -eq "0"` ]; then
            echo "Apache found"
        else
            echo "Apache Not Installed"
            exit 1
        fi
    fi
}

# Checks whether index.html is present
check_web_file(){
    if [ ! -f /var/www/index.html ]; then
        echo "HTML index file not found"
        exit 1
    fi
}

# Check Whether MySQK Database is installed
check_mysql(){
    if [ `sudo mysql -v &> /dev/null && echo $? -eq "0"` ]; then
        echo "mysql found"
    else
        echo "mysql not found"
        exit 1
    fi
}

# Install requirted packages
install_packages(){
    sudo apt install -y curl zip unzip
}