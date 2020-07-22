#!/bin/bash

sudo grep -i "done" /opt/katacoda-background-finished &> /dev/null
if [[ "$?" -eq 0 ]]; then
exit
fi

while true; do sudo grep -i "done" /opt/katacoda-finished > /dev/null && break || sleep 2; done

echo "Everything ready... Finalise the deployment"

/usr/local/bin/deploy.sh

echo "done" | sudo tee /root/katacoda-background-finished