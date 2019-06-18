As demonstrated in this scenario, Makefiles make it really easy to manage the creation of Docker images. By having a single file you can organise the required commands for creating, debugging and releasing in a single and consistent approach.

```
NAME = benhall/docker-make-demo

default: build

build:
    docker build -t $(NAME) .

push:
    docker push $(NAME)

debug:
    docker run --rm -it $(NAME) /bin/bash

run:
    docker run --rm $(NAME)

release: build push

```
