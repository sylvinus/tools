.PHONY: dev

PORT ?= 8000

dev:
	@echo ""
	@echo "  Serving at \033[1;36mhttp://localhost:$(PORT)\033[0m"
	@echo ""
	@python3 -m http.server $(PORT)
