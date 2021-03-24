#!/bin/bash

# to generate a unique number
current_time=$(date '+%Y-%m-%d' | tr ':' '-')



# Create a S3 Bucket to upload files
create_s3_bucket(){
    aws s3 mb s3://automated-cloud-management-alpha --profile default --region ap-south-1
    # aws s3api create-bucket --bucket automated.cloud.migrtation
}



# Upload required files to S3 Bucker
upload_web_files(){
    # aws s3 cp apache_files.zip s3://automated-cloud-management-$current_time --profile default --region ap-south-1
    aws s3 cp apache_files.zip s3://automated-cloud-management-alpha --profile default --region ap-south-1
    rm apache_files.zip
}



# Upload the database dump to S3
upload_database_dump(){
    aws s3 cp mysql_database.sql s3://automated-cloud-management-alpha --profile default --region ap-south-1
    rm mysql_database.sql
}

upload_sql_reset(){
    aws s3 cp sql-pass.sql s3://automated-cloud-management-alpha --profile default --region ap-south-1
    rm sql-pass.sql
}
