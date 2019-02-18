.PHONY: run restart in in-web in-db stop clean log

run:
	docker-compose up -d

run-build:
	docker-compose up -d --build

run-build-web:
	docker-compose up -d --build web

run-dev:
	docker-compose -f docker-compose-dev.yml up -d

run-dev-build:
	docker-compose -f docker-compose-dev.yml up -d --build

restart: 
	docker restart container-web

in:
	docker exec -i -t container-web /bin/bash

in-db:
	docker exec -i -t container-db /bin/bash

stop:
	docker-compose stop

clean:
	docker-compose down
	
log:
	docker logs -f --details container-web
