
server {

    # Uncomment the following line for domain mapping
    # listen 80 default_server;

    server_name example-multisite-subdomain-fastcgi-cache.com   *.example-multisite-subdomain-fastcgi-cache.com;

    # Uncomment the following line for domain mapping
    #server_name_in_redirect off;

    access_log off;
    error_log off;


    root /var/www/example-multisite-subdomain-fastcgi-cache.com/htdocs;
    
    

    index index.php index.html index.htm;


    include common/wpfc.conf;      
    include common/wpcommon.conf;
    include common/locations.conf;
    include /var/www/example-multisite-subdomain-fastcgi-cache.com/conf/nginx/*.conf;
}
