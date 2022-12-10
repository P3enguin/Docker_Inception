all:
	docker-compose -f ./src/docker-compose.yml up --build

re: clean all

clean:
	docker-compose -f ./src/docker-compose.yml down --rmi all -v --remove-orphans
