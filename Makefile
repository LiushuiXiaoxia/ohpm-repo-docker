

build:
	docker build --tag ohpm-repo .

setup:
	mkdir -p data/db
	mkdir -p data/storage/
	chmod -R 777  data
	chmod -R 777  app

start: setup
	docker-compose up -d
	sleep 10 && docker logs ohpm-repo
	sleep 10 && docker logs ohpm-repo

stop:
	docker-compose down

test: setup
	docker-compose down && docker-compose up

log:
	docker logs -f ohpm-repo