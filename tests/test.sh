#!/bin/bash
set -xe
export IMAGE_NAME="fvigotti/local-kafkamanager"
docker build -t $IMAGE_NAME ../src

export YKM_DEFAULT_PORT=9000
#mkdir -p /tmp/docker_nginx_test
#cp -Rfp ./shared_volumes /tmp/docker_nginx_test/
#
#
#
#export NGINX_HTTP_PORT=17080
#export PROXYED_HTTP_PORT=18089
#export DOCKER_DAEMON_OPTIONS="-d"
#export DOCKER_DAEMON_OPTIONS="--rm -ti"
#
#
#
#docker run ${DOCKER_DAEMON_OPTIONS} --name test_fvigotti_nginx \
#-v /tmp/docker_nginx_test/shared_volumes/cache/:/var/cache/nginx/   \
#-v /tmp/docker_nginx_test/shared_volumes/etc/:/etc/nginx/   \
#-v /tmp/docker_nginx_test/shared_volumes/logs/:/var/log/nginx/   \
#-p ${NGINX_HTTP_PORT}:${NGINX_HTTP_PORT} \
#-p ${PROXYED_HTTP_PORT}:${PROXYED_HTTP_PORT} \
# fvigotti/nginx
#
#
#docker run --rm -ti -p ${PROXYED_HTTP_PORT}:${PROXYED_HTTP_PORT} -v $(pwd)/shared_volumes/www/:/www fvigotti/fatubuntu http-server /www/ -p ${PROXYED_HTTP_PORT} -a localhost
#http-server shared_volumes/www/ -p ${PROXYED_HTTP_PORT} -a localhost

docker run --rm -ti -p ${YKM_DEFAULT_PORT}:${YKM_DEFAULT_PORT} \
    $IMAGE_NAME
#http-server shared_volumes/www/ -p ${PROXYED_HTTP_PORT} -a localhost
#
#
