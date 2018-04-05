composer () {
   docker exec -it --user $(id -u):$(id -g) --env PWD=${PWD} php7 bash -c "composer $argv"
}

node () {
   docker run -it --rm --user $(id -u):$(id -g) --env PWD=${PWD} --volumes-from disk --volume /etc/passwd:/etc/passwd --volume /etc/group:/etc/group devstartwpkit_node:latest bash -c "cd $PWD && node $argv"
}

yarn () {
   docker run -it --rm --user $(id -u):$(id -g) --env PWD=${PWD} --volumes-from disk --volume /etc/passwd:/etc/passwd --volume /etc/group:/etc/group devstartwpkit_node:latest bash -c "cd $PWD && yarn $argv"
}