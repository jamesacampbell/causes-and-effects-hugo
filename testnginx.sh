if ! which nginx > /dev/null 2>&1; then
    echo "Nginx not installed, attempting install now..."
	exit 1
else
	echo "nginx is here!"
fi
