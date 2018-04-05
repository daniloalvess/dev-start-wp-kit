build:
	$(shell sudo ./MakeFunctions/miscellaneos-fix.sh)
	$(shell sudo ./MakeFunctions/user-create.sh)
up:
	@docker-compose up --detach
stop:
	@docker-compose stop
dev:
	@docker-compose up