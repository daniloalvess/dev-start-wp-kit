
server {


    server_name example-no-cache.com   www.example-no-cache.com;


    access_log off;
    error_log off;


    root /var/www/example-no-cache.com/htdocs;
    
    

    index index.php index.html index.htm;


    include common/php.conf;      
    include common/wpcommon.conf;
    include common/locations.conf;
    include /var/www/example-no-cache.com/conf/nginx/*.conf;
}
