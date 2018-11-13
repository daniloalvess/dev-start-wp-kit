build:
	$(shell sudo bash ./MakeFunctions/miscellaneos-fix.sh)
	$(shell sudo bash ./MakeFunctions/user-create.sh)
install:
	$(shell ./MakeFunctions/docker-fix.sh)
start:
	@docker-compose up -d
stop:
	@docker-compose stop
dev:
	@docker-compose up
rm:
	@docker rm php7 php6 webserver mysql disk