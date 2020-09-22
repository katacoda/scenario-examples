With this environment the Kubernetes nodes are not configured. If you want to configure the nodes then you'd need to run `kubeadm` which has been set and configured. For example, for following command will initialise the master with the latest version installed.

`kubeadm init --kubernetes-version $(kubeadm version -o short)`{{execute HOST1}}