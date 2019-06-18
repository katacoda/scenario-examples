spotify/docker-gc is a simple Docker container and image garbage collection script, run as a container.

The script will

* Containers that exited more than an hour ago are removed.
* Images that don't belong to any remaining container after that are removed.
* Base images used by container are not removed unlike docker rmi $(docker images -q)

