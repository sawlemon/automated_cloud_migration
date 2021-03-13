#!/bin/bash

# Cheks whether aws cli is installed, if not instlls
if [ `aws -V > /dev/null && echo $? -eq "0"` ]; then
    echo "aws found"
    else
        sudo apt install curl
        curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
        unzip awscliv2.zip
        sudo ./aws/install
        echo "aws-cli install successfully"
        rm  -rf awscliv2.zip aws
fi

