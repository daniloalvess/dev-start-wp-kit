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
