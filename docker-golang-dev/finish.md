As demonstrated in this scenario, Makefiles make it really easy to manage the creation of Docker images. By having a single file you can organise the required commands for creating, debugging and releasing in a single and consistent approach.

```
NAME = ocelotuproar/docker-warden
INSTANCE = docker-warden

.PHONY: default build copy debug run release dev push

default: build

build:
	docker build -t $(NAME) .

copy:
	docker create --name $(INSTANCE) $(NAME)
	docker cp $(INSTANCE):/go/bin/app $(shell pwd)/build
	docker rm $(INSTANCE)

debug:
	docker run --rm -it --name $(INSTANCE) $(NAME) /bin/bash

run:
	docker run --rm --name $(INSTANCE) $(NAME)

dev:
	docker run -it --rm -w /go/src/github.com/$(NAME) -v $(shell pwd)/vendor/github.com/:/go/src/github.com/ -v $(shell pwd):/go/src/github.com/$(NAME) golang
```
