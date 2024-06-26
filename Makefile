login:
	docker exec -it php_test bash
setup:
	@make build
	@make up 
	@make composer-update
build:
	docker compose build --no-cache --force-rm
stop:
	docker compose stop
up:
	docker compose up -d
composer-update:	
	docker exec  todoman-app bash -c "composer update"
migrate:
	docker exec  todoman-app bash -c "php artisan migrate"
rollback:
	docker exec  todoman-app bash -c "php artisan migrate:rollback"
