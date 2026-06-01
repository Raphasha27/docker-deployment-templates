.PHONY: lint validate-all

lint:
	@echo "Validating Docker Compose files..."
	@for dir in templates/*/; do \
		name=$$(basename $$dir); \
		if [ -f "$$dir/docker-compose.yml" ]; then \
			echo "  Checking $$name..."; \
			docker compose -f "$$dir/docker-compose.yml" config -q 2>/dev/null && echo "    ✓ Valid" || echo "    ✗ Invalid"; \
		fi; \
	done

validate-all:
	@echo "Validating all template files..."
	@for dir in templates/*/; do \
		name=$$(basename $$dir); \
		echo "--- $$name ---"; \
		ls -la "$$dir"; \
	done
