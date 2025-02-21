# Jenkins Makefile

CONTAINER_NAME = jenkins
IMAGE = my-jenkin-python
VOLUME = jenkins_home
PORTS = -p 8080:8080 -p 50000:50000

.PHONY: run stop restart remove logs

setup:
	docker run -t $(IMAGE) .

run:
	docker run $(PORTS) -v $(VOLUME):/var/jenkins_home --name $(CONTAINER_NAME) -d $(IMAGE)

stop:
	docker stop $(CONTAINER_NAME)

restart:
	docker restart $(CONTAINER_NAME)

remove: stop
	docker rm $(CONTAINER_NAME)

logs:
	docker logs -f $(CONTAINER_NAME)
