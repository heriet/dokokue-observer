DOCS_PORT ?= 8000
COMPOSE = docker compose
ZENSICAL_RUN = $(COMPOSE) run --rm doc

.PHONY: build-docs
build-docs:
	$(ZENSICAL_RUN) build

.PHONY: serve-docs
serve-docs:
	python3 -m http.server $(DOCS_PORT) -d docs
