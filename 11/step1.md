Containers use the docker.sock file as a way to communicate with the host Docker daemon. Accessing the daemon is used as a way to listen to Docker events, for example, when containers start/stop, to update application configuration. A popular framework using this is [nginx-proxy](https://github.com/jwilder/nginx-proxy) which serves as a load balancer for containers.

Mounting the file is done via the volume flag, for example _-v /var/run/docker.sock:/var/run/docker.sock_

However, you need to be careful of what images you trust with this file which we'll explore in the next step.

