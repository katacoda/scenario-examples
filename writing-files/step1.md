You can write files in your scenario using a bash command:

```
cat << EOF > /tmp/storageos-secret.yaml
apiVersion: v1
kind: Secret
metadata:
  name: "storageos-api"
  namespace: "storageos-operator"
  labels:
    app: "storageos"
type: "kubernetes.io/storageos"
EOF
```{{execute}}

Check the content of your file
`cat /tmp/storageos-secret.yaml`{{execute}}

If you need to have those files created at the start of the scenario, you can define them as [assets](https://katacoda.com/scenario-examples/scenarios/upload-assets).
