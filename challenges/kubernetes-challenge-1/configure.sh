launch.sh
kubectl apply -f /opt/deploy.yaml
rm /opt/deploy.yaml

echo "Waiting for 30080..."

while ! nc -z node01 30080; do   
  sleep 0.5
done

echo "Started"
echo 'done' > /opt/katacoda-background-finished