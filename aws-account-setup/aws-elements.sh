#!/bin/bash


# Create a S3 Bucket to upload files
create_s3_bucket(){
    aws s3 mb s3://automated-cloud-migration
}