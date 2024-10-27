SERVICE_DIR=./services

.DEFAULT_GOAL := help

# Add help target to provide usage instructions
.PHONY: help
help: ## Show this help message
	@echo "Usage:"
	@echo "  make run service=<service_name>   Run a specified service"
	@echo ""
	@echo "Example:"
	@echo "  make run service=blogs            Run the blogs service"

.PHONY: run
run: ## Run a specific service (e.g., `make run service=blogs`)
	@if [ -z "$(service)" ]; then \
		echo "Please specify a service. Usage: make run service=<service_name>"; \
		exit 1; \
	fi
	
	@if [ -d "$(SERVICE_DIR)/$(service)" ]; then \
		echo "Starting $(service)..."; \
		go run $(SERVICE_DIR)/$(service)/cmd/main.go; \
	else \
		echo "Error: Service '$(service)' not found in ./services"; \
		exit 1; \
	fi

