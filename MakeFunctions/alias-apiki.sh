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