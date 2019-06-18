Makefiles become extremely useful when they define all the different aspects of the build as different targets. Each target can either be executed independently or chained together.

#### Task
Create a second target called _run_ that launches the newly created docker image using the command `docker run benhall/docker-make-example`
