With these steps completed the cluster is now running along with DNS and a UI. You can check the health running the following commands.

`
curl http://docker:4001/version
curl http://docker:8080/version
export KUBERNETES_MASTER=http://docker:8080
kubectl cluster-info
kubectl get nodes
`{{execute}}

The results from port 4001 is etcd. The results from 8080 is Kubernetes. The _export KUBERNETES_MASTER_ command sets the default server for kubectl. 
