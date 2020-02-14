# Build time
install_kompose() {
  # Linux
  curl -L https://github.com/kubernetes/kompose/releases/download/v1.20.0/kompose-linux-amd64 -o kompose
  chmod +x kompose
  sudo mv ./kompose /usr/local/bin/kompose
}

install_helm() {
  curl -s https://storage.googleapis.com/kubernetes-helm/helm-v2.9.0-linux-amd64.tar.gz | tar xz
  cp linux-amd64/helm /usr/local/bin/
}

## Install CSI host path driver
install_csi_driver() {
  git clone https://github.com/kubernetes-csi/csi-driver-host-path.git /opt/csi-driver-host-path
}

install_kompose
install_helm
install_csi_driver

# Runtime
cat <<EOF > /opt/configure-environment.sh
#!/bin/bash
# Wait until k8s is ready
waitk8s=true
while [ \$waitk8s == true ]
do
    if [[ "\$(kubectl get nodes 2>/dev/null | grep Ready | wc | awk '{ print \$1}')"  == "2" ]]; then
        waitk8s=false
    else
        echo "Waiting for k8s" >> /opt/configure-environment.logs
        sleep 1
    fi
done
# Tiller
kubectl -n kube-system create serviceaccount tiller
kubectl create clusterrolebinding tiller --clusterrole cluster-admin --serviceaccount=kube-system:tiller
# Helm
# helm init --service-account tiller
helm init --service-account tiller --output yaml | sed 's@apiVersion: extensions/v1beta1@apiVersion: apps/v1@' | sed 's@  replicas: 1@  replicas: 1\n  selector: {"matchLabels": {"app": "helm", "name": "tiller"}}@' | kubectl apply -f -
until (kubectl get pods -n kube-system -l app=helm,name=tiller 2>/dev/null | grep Running); do sleep 1; done

## Install CSI host path driver
/opt/csi-driver-host-path/deploy/kubernetes-1.16/deploy-hostpath.sh
EOF
chmod +x /opt/configure-environment.sh
