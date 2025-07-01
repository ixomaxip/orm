
COMPOSE=docker-compose -f docker-compose.yaml -p $(SRV)-$(DEV_USER)

.PHONY: ci logs
ci:
	$(COMPOSE) build $@
down ps restart create:
	$(COMPOSE) $@
push:
	$(COMPOSE) $@ --ignore-push-failures ci rt
pull:
	$(COMPOSE) $@ ci rt
logs:
	$(COMPOSE) logs -f --tail 100 ci

run:
	$(COMPOSE) run --rm ci
bash:
	$(COMPOSE) run --rm ci bash
up:
	$(COMPOSE) up -d --force-recreate ci
