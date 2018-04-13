#/bin/bash


if [ ! -d "/var/lib/mysql" ]; then
	sudo tar -xzf ./miscellaneous/mysql/mysql-data.tgz -C /var/lib
fi


docker-compose up -d
docker exec php7 /bin/bash -c "sed -i.bak s/www-data/$(whoami)/g /usr/local/etc/php-fpm.d/www.conf"
docker exec php6 /bin/bash -c "sed -i.bak s/www-data/$(whoami)/g /usr/local/etc/php-fpm.d/www.conf"
docker-compose stop
