NAME=do-hello-docker

build:
		docker build -t $(NAME) .

start:
		docker run \
		-v $(PWD)/src:/usr/src/app/src \
		--name $(NAME) \
		-p 8888:80 \
		--rm -it $(NAME)

restart: stop start


stop:
		docker rm -f $(NAME)

attach:
		docker exec -it $(NAME) bash

logs:
		docker logs $(NAME)
