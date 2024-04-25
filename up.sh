docker-compose up -d

docker exec -it lamp-userService composer install

docker exec -it lamp-userService ./bin/phpunit