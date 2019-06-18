In this scenario you will learn how to use Make for managing docker image creation.

Like source code, Docker images are required to be built, tested and deployed. While Docker doesn't have a build framework, you can take advantage of *Make* to automate the build process across different environments.

Makefiles are text files that provide a simple way to organise code compilation, or in this case Docker image compilation, into named targets. They are used by the `make` utility in order to execute the required commands to complete an action, such as build a docker images. These Makefiles can contain multiple different targets allowing for a centralised place to store the commands required to build, test, debug and push docker images.

In this scenario we'll explore how to create a Makefile that builds a Docker image.
