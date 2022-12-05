all:
	docker-compose -f ./docker-compose.yml up

re: 
	docker-compose -f ./docker-compose.yml up --build


clean:
	docker system prune -f
	docker stop $$(docker ps -qa) ;\
	docker rm $$(docker ps -qa) ; \
	docker rmi -f $$(docker images -qa) ; \
	docker volume rm $$(docker volume ls -q) ;\
	docker network rm $$(docker network ls -q)