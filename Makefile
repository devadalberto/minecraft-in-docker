.PHONY: start-atm8
start-atm8:
	docker-compose -f docker-compose.atm8.yaml up -d

.PHONY: stop-atm8
stop-atm8:
	docker-compose -f docker-compose.atm8.yaml down

.PHONY: build-atm8
build-atm8:
	docker-compose -f docker-compose.atm8.yaml build
