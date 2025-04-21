db:
	docker exec -it attendance-db-1 mysql -u root -psecret
up:
	docker compose up -d
build:
	docker exec -it attendance-app-1 sh -c "npm run build"