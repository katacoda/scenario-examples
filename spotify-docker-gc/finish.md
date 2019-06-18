In this scenario we explored how to use the _spotify/docker-gc_ to perform simple container garbage collection to ensure that unused containers and images are cleaned up.

To run this in production, combine the Docker commands explained here with a scheduler, such as Cron or Mesos, to run your container task at certain points during the day.