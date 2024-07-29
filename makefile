# Nome do arquivo docker-compose.yml
COMPOSE_FILE=compose.yml

# Target para criar o arquivo docker-compose.yml usando o script shell
compose-generate:
	@"C:\Program Files\Git\bin\bash.exe" generate_compose.sh
	@echo "Arquivo $(COMPOSE_FILE) criado com sucesso."

compose-up:
	@docker-compose -f $(COMPOSE_FILE) up -d
	@echo "Compose up complete."