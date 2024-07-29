# Nome do arquivo docker-compose.yml
COMPOSE_FILE=compose.yml

# Target para criar o arquivo docker-compose.yml usando o script shell
compose-pre-setup:
	@"C:\Program Files\Git\bin\bash.exe" generate_compose.sh
	@echo "file $(COMPOSE_FILE) success created."
	@composer create-project laravel/laravel app
	@echo "laravel import success."
	@"C:\Program Files\Git\bin\bash.exe" move_files.sh
	@echo "docker files success move."
	@echo "COMPOSE PRE SETUP SUCCESFFULLY COMPLETE."
	@echo "@blueVulcan."

compose-up:
	@docker-compose -f $(COMPOSE_FILE) up -d
	@echo "Compose up complete."