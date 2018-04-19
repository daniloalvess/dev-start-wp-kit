#/bin/bash

WUSER=www-data
EXIST=$(getent passwd $WUSER )

[ "$EXIST" == "" ] && { 
	getent group 33
	[ $? != 0 ] && {
		groupadd --gid 33 $WUSER
	} 
	useradd -u 33 -g 33 -d /var/www -s /bin/bash $WUSER
	exit 0
}

GROUP_EXIST=$(getent group 33  | grep $WUSER)

[ "$GROUP_EXIST" == ""  ] && {
	groupmod --new-name www-data tape
}
exit 0