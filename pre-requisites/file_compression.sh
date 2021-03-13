

apache_files_zip(){
  echo "Compressing apache server files"
  sudo zip -r apache_files.zip /var/www/
  if [ `echo $? -eq 0` ];
  then
    echo "zipped succesfully : apache_files.zip"
  else
    echo "failed to zip"
    exit 1
  fi
  # use tar.gz  to compress
}