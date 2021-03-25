#!/bin/bash



# Compress the web folders
apache_files_zip(){
  echo "Compressing apache server files"
  sudo zip -r -j apache_files.zip /var/www/html/
  if [ `echo $? -eq 0` ];
  then
    echo "zipped succesfully : apache_files.zip"
  else
    echo "failed to zip"
    exit 1
  fi
}



# Display the the size of the files 
display_file_size(){
  du -sh apache_files.zip
  du -sh mysql_database.sql 
}