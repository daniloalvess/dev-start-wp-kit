# dev-start-wp-kit


First off all, go to the root git cloned project and RUN the following codes at your command line;


//fix MySQL run
```
sudo mkdir  /var/run2 && sudo chmod 777 /var/run2
```
//fix Nginx files
```
cp -rf nginx/* /etc/nginx/
```

//PHPMyADMIN
```
cp -rf miscellaneous/vhost/phpmyadmin /var/www
```


After tha run
```
docker-compose up
```


Alias
```

composer () {
   docker exec -it --user $(id -u):$(id -g) --env PWD=${PWD} php7 bash -c "composer $argv"
}

node () {
   docker run -it --rm --user $(id -u):$(id -g) --env PWD=${PWD} --volumes-from disk --volume /etc/passwd:/etc/passwd --volume /etc/group:/etc/group devstartwpkit_node:latest bash -c "cd $PWD && node $argv"
}

yarn () {
   docker run -it --rm --user $(id -u):$(id -g) --env PWD=${PWD} --volumes-from disk --volume /etc/passwd:/etc/passwd --volume /etc/group:/etc/group devstartwpkit_node:latest bash -c "cd $PWD && yarn $argv"
}

```