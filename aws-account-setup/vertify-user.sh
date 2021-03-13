#!/bin/bash
# To test te aws credentials

# aws sts get-caller-identity
if [ `aws sts get-caller-identity > /dev/null && echo $? -eq 0` ]; 
then
    echo "Valid User"
else
    echo "Invalid user"
    aws configure
    exit 1
fi

# Success
# {
#     "UserId": """
#     "Account": "",
#     "Arn": "arn:aws:iam::"
# }

# Failure
# Could not connect to the endpoint URL: "https://sts.asd.amazonaws.com/"