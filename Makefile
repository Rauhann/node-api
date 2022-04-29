#!make
include .env
export $(shell sed 's/=.*//' .env)

t=

up:
	docker-compose up
upd:
	docker-compose up -d
down:
	docker-compose down
downs:
	docker-compose down --remove-orphans
build:
	docker-compose up --build
buildd:
	docker-compose up --build -d
sh:
	docker exec -it express-node /bin/bash
server:
	docker exec -it express-nginx /bin/bash
db:
	docker exec -it express-db bash -c "mysql -u ${DB_USERNAME} -p'${DB_PASSWORD}' ${DB_DATABASE}"
reset:
	docker-compose down --remove-orphans && docker system prune -a -f && docker-compose up --build
