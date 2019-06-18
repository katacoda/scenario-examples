With Systemd, all services have a unit file. A unit file defines how Systemd should manage the service. It will generally include:

* System dependencies and services which must be running

* Tasks to perform before launching

* How to start the process

* How to stop process

* How to restart the process if it crashes

When using Systemd to launch Docker containers the service file manages the processes via the Docker CLI. You can see the example of starting Postgres here `cat postgres.service`{{execute}}