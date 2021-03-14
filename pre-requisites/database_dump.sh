#!/bin/bash

# Dumping the database
mysql_database_dumping() {
	read -p "Enter mysql database user name: " username
	read -p "Enter mysql database password: " password
	mysqldump --all-databases -u $username -p $password > mysql_database.sql 
    if [ echo $? -eq 0 ]; then
        echo "database dump created"
    else
        echo "Database Username and password incorrect"
        exit 1
    fi
}