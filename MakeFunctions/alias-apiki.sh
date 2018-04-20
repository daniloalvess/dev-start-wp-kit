#!/bin/bash

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
     --user $(id -u):$(id -g) \
     --env PWD=$PWD \
     --volumes-from disk \
     --volume /etc/passwd:/etc/passwd \
     --volume /etc/group:/etc/group \
     apiki/node:1.1 \
     bash \
     -c "cd $PWD && yarn $argv"
}

npm () {
   docker run \
     -it \
     --rm \
     --user $(id -u):$(id -g) \
     --env PWD=$PWD \
     --volumes-from disk \
     --volume /etc/passwd:/etc/passwd \
     --volume /etc/group:/etc/group \
     apiki/node:1.1 \
     bash \
     -c "cd $PWD && npm $argv"
}
