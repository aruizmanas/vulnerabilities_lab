.PHONY: up down restart logs build clean help

help:
	@echo "Available commands:"
	@echo "  make up      - Start the services in detached mode"
	@echo "  make down    - Stop and remove containers"
	@echo "  make restart - Restart the services"
	@echo "  make logs    - View logs from all services"
	@echo "  make build   - Rebuild the application image"
	@echo "  make clean   - Stop services and remove volumes (DESTRUCTIVE)"

up:
	docker-compose up -d

down:
	docker-compose down

restart:
	docker-compose restart

logs:
	docker-compose logs -f

build:
	docker-compose build

clean:
	docker-compose down -v
