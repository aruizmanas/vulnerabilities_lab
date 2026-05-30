.PHONY: help up down restart logs exploit

help:
	@echo "Available commands:"
	@echo "  make up      - Start the services in detached mode"
	@echo "  make down    - Stop and remove containers"
	@echo "  make restart - Restart the services"
	@echo "  make logs    - View logs from the services"
	@echo "  make exploit - Run the Python exploit demo"

up:
	docker compose up --build -d

down:
	docker compose down

restart:
	docker compose restart

logs:
	docker compose logs -f

exploit:
	python3 exploit_demo.py
