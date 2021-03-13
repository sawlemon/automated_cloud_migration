#!/bin/bash

# To test te aws credentials
verify_user_id(){
    if [ `aws sts get-caller-identity > /dev/null && echo $? -eq 0` ]; 
    then
        echo "Valid User"
    else
        echo "Invalid user"
        aws configure
        exit 1
    fi
}


# aws sts get-caller-identity
# Success
# {
#     "UserId": """
#     "Account": "",
#     "Arn": "arn:aws:iam::"
# }

# Failure
# Could not connect to the endpoint URL: "https://sts.asd.amazonaws.com/"