# args
# $1: network name
# $2: mysql container name
# $3: container name prefix

docker run -d \
  --name "${3}-phpmyadmin" \
  -p 8080:80 \
  --network "$1" \
  -e PMA_HOST="$2" \
  -e PMA_PORT=3306 \
  phpmyadmin/phpmyadmin
