.DEFAULT_GOAL := help

setup-delivery:  ## Setup each service project's source repo and pipelines
	cd service-network && make setup-delivery
	cd service-jessica && make setup-delivery
	cd service-luke && make setup-delivery

load-delivery:  ## Load source code into the service project repositories
	cd service-network && make load-delivery
	cd service-jessica && make load-delivery
	cd service-luke && make load-delivery

plan-delivery: ## See what's involved in setting up the delivery infrastructure
	cd service-network && make plan-delivery
	cd service-jessica && make plan-delivery
	cd service-luke && make plan-delivery

destroy-delivery: ## Destroy the source repos and pipelines, but not infrastructure
	cd service-network && make destroy-delivery
	cd service-jessica && make destroy-delivery
	cd service-luke && make destroy-delivery

plan: ## Plan all the service infrastructure for a deployment collection
	cd service-network && make plan
	cd service-jessica && make plan
	cd service-luke && make plan

up: ## Bring up all the service infrastructure for a deployment collection
	cd service-network && make up
	cd service-jessica && make up
	cd service-luke && make up

test: ## Test the service infrastructure for a deployment collection
	cd service-network && make test
	cd service-jessica && make test
	cd service-luke && make test

destroy: ## Destroy all the service infrastructure for a deployment collection
	cd service-jessica && make destroy
	cd service-luke && make destroy
	cd service-network && make destroy

clean: ## Clean local files
	cd service-network && make clean
	cd service-jessica && make clean
	cd service-luke && make clean

help:
	@grep -h -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
