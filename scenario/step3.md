The Master is the controlling unit for the cluster. The Master will manage scheduling of new containers and understand which node they run on.

The Master will communicate with the API and nodes to complete the required tasks. Launching the Master will launch more services it requires to run the cluster. The Controller Manager handles replication. The Scheduler Server handles tracking resource use. It ensure containers can run on it's assigned node without overloading capacity.

`
docker run -d --name=kubs \
    --volume=/:/rootfs:ro \
    --volume=/sys:/sys:ro \
    --volume=/dev:/dev \
    --volume=/var/lib/docker/:/var/lib/docker:rw \
    --volume=/var/lib/kubelet/:/var/lib/kubelet:rw \
    --volume=/var/run:/var/run:rw \
    --net=host \
    --pid=host \
    --privileged=true \
    gcr.io/google_containers/hyperkube:v1.1.2 \
    /hyperkube kubelet \
    --containerized \
    --hostname-override="0.0.0.0" \
    --address="0.0.0.0" \
    --cluster_dns=10.0.0.10 --cluster_domain=cluster.local \
    --api-servers=http://localhost:8080 \
    --config=/etc/kubernetes/manifests-multi
`{{execute}}

_hostname-override_ and _address_ is used to bind the master to all IP addresses.

_cluster_dns_ and _cluster_domain_ defines the DNS server (started in a future step) that allows containers to communicate via well-known names.

_api-servers_ defines the URL the Master should use to communicate with the api.

_config_ defines the manifest to use. _manifests-multi_ is used with DNS. It defines the configuration for the cluster.
