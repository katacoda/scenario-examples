#!/bin/bash

launch.sh

# Log script activity (https://serverfault.com/a/103569)
exec 3>&1 4>&2
trap 'exec 2>&4 1>&3' 0 1 2 3
exec 1>/var/log/init-background.log 2>&1
set -x

# Copy solver for now since its over 10mb.
SOLVER_VERSION=0.4.1
wget -q -O solver https://github.com/javajon/katacoda-solver/releases/download/$SOLVER_VERSION/solver-$SOLVER_VERSION-runner
chmod +x solver && mv solver /usr/local/bin/

# Common curl switches
echo '-s' >> ~/.curlrc

# Signal to challenge controller that the startup is complete
echo 'done' > /opt/katacoda-background-finished

# Signal to init-forground.sh that the startup is complete
echo 'done' > /opt/.backgroundfinished
