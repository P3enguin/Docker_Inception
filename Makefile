all:
	docker-compose -f ./src/docker-compose.yml up --build

re: clean all

clean:
	-docker stop $$(docker ps -qa) 2>/dev/null 
	-docker rm  $$(docker ps -qa)2>/dev/null  
	-docker rmi  $$(docker images -qa) 2>/dev/null  
	-docker volume rm -f $$(docker volume ls -q) 2>/dev/null 
	-docker network rm  $$(docker network ls -q) 2>/dev/null 