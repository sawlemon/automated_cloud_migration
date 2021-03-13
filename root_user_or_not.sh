#/bin/bash

if [ "$(id -u)" != "0" ]; then
	echo "Your not a root user"
else
	echo "Your are a root user"
fi
