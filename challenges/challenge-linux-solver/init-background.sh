#!/bin/bash

# Log script activity (https://serverfault.com/a/103569)
exec 3>&1 4>&2
trap 'exec 2>&4 1>&3' 0 1 2 3
exec 1>/var/log/init-background.log 2>&1
set -x

# Add any installations or configurations here that the scenario may need
# 

# Common curl switches
echo '-s' >> ~/.curlrc

# =========================
# Do not modify lines below

# The Solver command-line tool cannot be committed to each challenge and installed via assets. Mostly because
# scenarios limit the asset size to below 10Mb. Instead, this script downloads the solver utility from a public source.
# The version of the solver release should be the exact version the author testing the scenario with. Authors are
# encourage to periodically upgrade the solver release when new ones are available.
#
# Each time a scenario starts, this script is called from the background script (init-background.sh). If the solver
# download fails the scenario will not work correctly. To greatly reduce this risk, the download of
# the same version of solver comes from two independent sources:
#
# 1) GitHub container registry
# 2) GitHub solver release page
#
# The two sources are still related to GitHub, but they are different storage services. The latter is less reliable
# than the container registry.

# The 'solver create' command will install this script and ensure this version matches the utilized solver version.
SOLVER_VERSION=0.5.3

function verify_solver_install() {
  solver --version | grep $SOLVER_VERSION
  return $?
}

# First download request - download container image, create it, copy solver out of the container, delete container
SOLVER_CONTAINER_IMAGE=ghcr.io/javajon/solver
ID=$(docker create $SOLVER_CONTAINER_IMAGE:$SOLVER_VERSION)
docker cp "$ID":/application /usr/local/bin/solver

if [ verify_solver_install() -ne 0 ]; then
    echo "Failed to download solver from $SOLVER_CONTAINER_IMAGE:$SOLVER_VERSION"

    # Second download request - download solver linux binary from release page
    RELEASE="https://github.com/javajon/katacoda-solver/releases/download/$SOLVER_VERSION/solver-$SOLVER_VERSION-runner"
    wget -q -O solver $RELEASE
    chmod +x solver
    mv solver /usr/local/bin/

    return $?
fi

if [ verify_solver_install() -ne 0 ]; then
  echo "Failed to download solver from github release page: $RELEASE"
  # init-foreground displays messsage on linux prompt that there is a problem.
fi

# Signal to challenge controller that the startup is complete
echo 'done' > /opt/katacoda-background-finished

# Signal to init-foreground.sh that the startup is complete
echo 'done' > /opt/.backgroundfinished
