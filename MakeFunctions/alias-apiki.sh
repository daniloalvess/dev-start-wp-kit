php () {
  docker exec \
    -i \
    php7 \
    bash \
    -c "php $argv"
}

composer () {
   docker exec \
    -it \
    --user (id -u):(id -g) \
    --env PWD=$PWD \
    php7 \
    bash \
    -c "cd $PWD && composer $argv" 
}

phpcs () {
   docker exec \
    -it \
    --user (id -u):(id -g) \
    --env PWD=$PWD \
    php7 \
    bash \
    -c "cd $PWD && phpcs $argv" 
}

mysql () {
  docker exec \
    -it \
    mysql \
    mysql -h127.0.0.1 -proot $argv
}

mysqlimport () {
  docker exec \
    -i \
    mysql \
    mysql -h127.0.0.1 -proot $argv
}

yarn () {
   docker run \
     -it \
     --rm \
     --user (id -u):(id -g) \
     --env PWD=$PWD \
     --volumes-from disk \
     --volume /etc/passwd:/etc/passwd \
     --volume /etc/group:/etc/group \
     devstartwpkit_node:latest \
     bash \
     -c "cd $PWD && yarn $argv"
}

npm () {
   docker run \
     -it \
     --rm \
     --user (id -u):(id -g) \
     --env PWD=$PWD \
     --volumes-from disk \
     --volume /etc/passwd:/etc/passwd \
     --volume /etc/group:/etc/group \
     devstartwpkit_node:latest \
     bash \
     -c "cd $PWD && npm $argv"
}
