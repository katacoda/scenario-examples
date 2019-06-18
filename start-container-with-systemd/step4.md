With the service running you can check the results. Because the process is being managed by Docker, you should see the container running when you run `docker ps`{{execute}}.

As the process is run via Systemd, it also provides access to the log files via `journalctl`. The following command will output the logs via Systemd. This can be useful when debugging why a service has not launched successfully.

`journalctl --no-pager -u postgres.service`{{execute}}