This scenario has a Dockerfile which defines a Docker container to output the current date.

The command `docker build -t benhall/docker-make-example .` will create a Docker image is a friendly tag  _benhall/docker-make-example_ which we can use when starting a container based on the image.

In the next step we'll demostrate how to use this command inside a Makefile.
