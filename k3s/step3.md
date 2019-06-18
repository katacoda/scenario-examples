Workloads can be scheduled via the CLI.

`k create deployment http --image=katacoda/docker-http-server`{{execute T2}}

`k get pods`{{execute T2}}

The pods are run via containerd and runc meaning `docker ps`{{execute}} is empty. However, the processes are running `ps aux | grep app`{{execute}}
