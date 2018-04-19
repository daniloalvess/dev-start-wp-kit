build:
	$(shell sudo ./MakeFunctions/miscellaneos-fix.sh)
	$(shell sudo ./MakeFunctions/user-create.sh)
install:
	$(shell ./MakeFunctions/docker-fix.sh)
start:
	@docker-compose up -d
stop:
	@docker-compose stop
dev:
	@docker-compose up
rm:
	@docker rm php7 php6 node webserver mysql disk