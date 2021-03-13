#!/bin/bash

# Cheks whether aws cli is installed, if not instlls
# aws --help >> /dev/null
if [ `sudo aws --help > /dev/null && echo $? -eq 0` ]; 
then
    echo "aws found"
else
    echo "aws-cli not found\nInstalling aws-cli ..........................................."
    sudo apt install -y curl unzip
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install
    echo "aws-cli install successfully"
    sudo rm  -rf awscliv2.zip aws
fi