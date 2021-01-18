echo "Starting Katacoda... This may take a few moments"

while [ ! -f /usr/local/bin/wait.sh ]; do sleep 1; done; sleep 1;  /usr/local/bin/wait.sh; /usr/local/bin/start.sh