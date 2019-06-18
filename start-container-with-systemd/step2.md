For Systemd to manage the service, the unit file needs to be in _/etc/systemd/system_

## Task
Use the following command to copy the Unit file to the correct location.

`sudo cp postgres.service /etc/systemd/system`{{execute}}

Once in the correct location, you need to enable the service. When your system boots it will automatically be started for you. 

`sudo systemctl enable /etc/systemd/system/postgres.service`{{execute}}


