SHELL := /bin/bash
.DEFAULT_GOAL := help

.PHONY: help
help:  ## help target to show available commands with information
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) |  awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: validate
validate:  docker-build ## Validate the katacoda scenarios
	docker-compose run dev katacoda validate:all --repo=/app/

.PHONY: docker-build
docker-build: ## Build Container
	docker-compose build

.PHONY: bash
bash: docker-build ## Open bash with dev dependencies installed
	docker-compose run dev bash
