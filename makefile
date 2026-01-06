# Variables
BUN = $(shell which bun)
PORT = 3000

.PHONY: help install start test test-ui clean

# Default target
help:
	@echo "FNIRSI DPS-150 Development Commands:"
	@echo "  make install      - Install dependencies using bun"
	@echo "  make start        - Start the static file server"
	@echo "  make test         - Run all tests"
	@echo "  make test-ui      - Run tests with Vitest UI"
	@echo "  make clean        - Remove node_modules"

# Install dependencies
install:
	$(BUN) install

# Run the server
# Using 'bun x serve' as requested in your package.json
start:
	@echo "Starting server on http://localhost:$(PORT)..."
	$(BUN) x serve .

# Testing
test:
	$(BUN) run test

test-node:
	$(BUN) run test:node

test-browser:
	$(BUN) run test:browser

test-ui:
	$(BUN) run test:ui

# Utility
clean:
	rm -rf node_modules
	@echo "Cleaned up node_modules"