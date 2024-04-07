docker-restart:
	docker compose down
	docker compose up --build -d

docker test:
	docker compose down
	docker compose up --build -d
	pytest