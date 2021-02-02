#!/bin/bash

sleep 5

echo "done" | sudo tee /root/katacoda-finished

echo "Everything ready... Finalise the deployment"

/usr/local/bin/deploy.sh

echo "done" | sudo tee /root/katacoda-background-finished