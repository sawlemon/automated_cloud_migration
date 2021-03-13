#!/bin/bash

if [ "$(id -u)" != "0" ]; then
        echo "This script must run using root user"
        exit 1
fi


if [ -f /etc/redhat-release ]; then
        echo "redhat detected"
        if [ `sudo httpd -v > /dev/null && echo $? -eq "0"` ]; then
                echo "Apache found"
                else
                        echo "Server not found"
                        exit 1
        fi
        elif [ -f /etc/debian_version ]; then
                echo "Debian based os"
                if [ `sudo apache2 -v > /dev/null && echo $? -eq "0"` ]; then
                        echo "Apache found"
                else
                        echo "Server not found"
                        exit 1
fi

if [ ! -f /var/www/index.html ]; then
        echo "File not found"
        exit 1
fi

if [ `aws -V > /dev/null && echo $? -eq "0"` ]; then
    echo "aws found"

    else
          curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
          unzip awscliv2.zip
          sudo ./aws/install
          echo "awscli install successfully"
fi
