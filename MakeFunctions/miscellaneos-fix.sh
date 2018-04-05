#/bin/bash

[ ! -d /var/run2 ] && {
	mkdir /var/run2
	chmod 777 /var/run2
}

[ ! -d /etc/nginx ] && {
	mkdir /etc/nginx
	cp -rf nginx/* /etc/nginx/
}

[ ! -d /var/www ] && {
	mkdir /var/www
	
}

[ ! -d /var/www/phpmyadmin ] && {
	cp -rf miscellaneous/vhost/phpmyadmin /var/www
}

[ ! -d /etc/profile.d/apiki.sh ] && {
	cp MakeFunctions/alias-apiki.sh /etc/profile.d/apiki.sh
}