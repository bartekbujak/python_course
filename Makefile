# Makefile

# Uruchomienie kontenerów Docker
up:
	docker compose up

# Zatrzymanie kontenerów Docker
down:
	docker compose down

# Zalogowanie do kontenera Docker
bash:
	docker exec -it python_app bash

#Przebudowuje obraz
build:
	docker compose build

# Aktualizacja pliku requirements.txt z poziomu kontenera
update_requirements:
	docker exec -it python_app sh -c "pip freeze > requirements.txt"



# Domyślny cel (phony target)
.DEFAULT_GOAL := help

# Pomoc - wyświetla listę dostępnych komend Makefile
help:
	@echo "Dostępne cele Makefile:"
	@echo "  up              - Uruchomienie kontenerów Docker"
	@echo "  down            - Zatrzymanie kontenerów Docker"
	@echo "  prune           - Czyszczenie nieużywanych zasobów Docker"
	@echo "  login           - Logowanie się do kontenera"
	@echo "  update_requirements - Aktualizacja pliku requirements.txt"
	@echo "  help            - Wyświetla tę p


