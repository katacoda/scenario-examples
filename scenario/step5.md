The kubectl is the command line client used to communicate with the Master.

`
curl -o ~/.bin/kubectl http://storage.googleapis.com/kubernetes-release/release/v1.1.2/bin/linux/amd64/kubectl
chmod u+x ~/.bin/kubectl
`{{execute}}

The client uses the environment variable _KUBERNETES_MASTER_ to define the default Master to communicate with.

`export KUBERNETES_MASTER=http://docker:8080`{{execute}}
