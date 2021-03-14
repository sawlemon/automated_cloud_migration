#!/bin/bash



# Cheks whether aws cli is installed, if not instlls
configure_user(){
    if [ `sudo aws --help > /dev/null && echo $? -eq 0` ]; 
    then
        echo "aws found"
    else
        echo "aws-cli not found\nInstalling aws-cli ..........................................."
        curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
        unzip awscliv2.zip
        sudo ./aws/install
        echo "aws-cli install successfully"
        sudo rm  -rf awscliv2.zip aws
    fi
}



# To test te aws credentials
verify_user_id(){
    if [ `aws sts get-caller-identity > /dev/null && echo $? -eq 0` ]; 
    then
        echo "Valid User"
    # working incorrectly
    else
        echo "Invalid user"
        aws configure
        exit 1
    fi
}