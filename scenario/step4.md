Each node in the cluster requires a running proxy server. The proxy is responsibility for managing communications by modifying the IPTables of the host machine. It also handles load balancing of traffic between containers on a host.

`
docker run -d --name=proxy\
    --net=host \
    --privileged \
    gcr.io/google_containers/hyperkube:v1.1.2 \
    /hyperkube proxy \
    --master=http://0.0.0.0:8080 --v=2
`{{execute}}

The _master_ option is the HTTP of where the Master is running.
