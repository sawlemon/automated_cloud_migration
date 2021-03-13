#!/bin/bash
# To test te aws credentials

test $(aws sts get-caller-identity) -eq && echo "invalid" || echo "valid"

# Success
# {
#     "UserId": """
#     "Account": "",
#     "Arn": "arn:aws:iam::"
# }

# Failure
# Could not connect to the endpoint URL: "https://sts.asd.amazonaws.com/"