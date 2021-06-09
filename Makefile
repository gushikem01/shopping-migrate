HAS_YQ=$(shell which yq)
HAS_MIGRATE=$(shell which migrate)
NS=session

up:
	docker-compose up -d

rebuild:
	docker-compose up -d --build

down:
	docker-compose down

ps:
	docker-compose ps

clear:
	docker system prune

migrate: ## migrate
ifeq ($(HAS_MIGRATE),)
	brew install golang-migrate
else
	migrate -help
	@echo 'migrate create -ext sql -dir ./mysql/migrations [NAME]'
	@echo 'migrate -database 'mysql://root:root@tcp(localhost:3306)/shopping_database' -path ./mysql/migrations up'
	@echo 'migrate -database 'mysql://root:root@tcp(localhost:3306)/shopping_database' -path ./mysql/migrations down'
endif
