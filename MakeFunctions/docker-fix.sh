#/bin/bash

docker-compose up --detach
docker exec php7 /bin/bash -c "sed -i.bak s/www-data/$(whoami)/g /usr/local/etc/php-fpm.d/www.conf"
docker exec php6 /bin/bash -c "sed -i.bak s/www-data/$(whoami)/g /usr/local/etc/php-fpm.d/www.conf"
docker-compose stop