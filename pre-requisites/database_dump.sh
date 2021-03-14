#!/bin/bash



# Dumping the database
mysql_database_dumping(){
	read -p "Enter mysql database user name: " username
    echo $username
	read -p "Enter mysql database password: " password
    echo $password
    mysqldump --all-databases -u $username -p $password > mysql_database.sql 
    # Error Handling
    if [ `echo $? -eq 0` ]; 
    then
        echo "database dump created : mysql_database.sql"
    else
        echo "Database Username and password incorrect"
        exit 1
    fi
}