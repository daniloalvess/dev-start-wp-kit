#/bin/bash

WUSER=www-data

getent passwd $WUSER &> /dev/null
[ $? != 0 ] && { 
	getent group 33
	[ $? != 0 ] && {
		groupadd --gid 33 www-data
	} 
	useradd -u 33 -g 33 -d /var/www -s /bin/bash $WUSER
	exit 0
}

getent group 33  | grep www-data &> /dev/null
[ $? != 0 ] && {
	groupmod --new-name www-data tape
}
exit 0