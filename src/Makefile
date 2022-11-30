all:
	docker-compose -f ./docker-compose.yml up

re: 
	docker-compose -f ./docker-compose.yml up --build


clean:
	docker rm $$(docker ps -q -a) -f && \
	docker rmi $$(docker images -q -a) -f && \
	docker volume rm $$(docker volume ls -a)