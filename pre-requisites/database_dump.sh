# Dumping the database
mysql_database_dumping() {
	read -p "Enter mysql database user name: " username
	read -p "Enter mysql database password: " password
	mysqldump --all-databases -u $username -p $password > mysql_database.sql 
}

