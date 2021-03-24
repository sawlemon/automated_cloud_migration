#!/bin/bash


create_infrastructure() {

    aws cloudformation create-stack \
    --stack-name myteststack \
    --template-body file://infrastructure/infrastructure.json \
    --capabilities CAPABILITY_IAM

}
