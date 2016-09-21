Kubectl allows you to launch containers on the cluster. When we launched the Master we defined a DNS IP which we'll now launch. Because Kubernetes uses etcd, it uses the related DNS service called SkyDNS.

The DNS allows containers to communicate based on well-known names instead of IP addresses.

To start a container you define a replicate controller and a service in yaml files. The the "Launching Guestbook" scenario covers the format and differences between rc and services (svc).

For now use the create command to launch the containers.

`
kubectl create -f ~/skydns-rc.yaml
kubectl create -f ~/skydns-svc.yaml
`{{execute}}
