Kubernetes has a UI that can be used to visualize the state of the cluster, similar to Kubectl.

Like with the DNS service, the UI also runs inside the cluster.

`
kubectl create -f ~/kube-ui-rc.yaml
kubectl create -f ~/kube-ui-svc.yaml
`{{execute}}

After a few moments you will be able to visit the UI on port 8080 with the URL https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/ui/
