Your learning environment has access to two machines, one for running the DC/OS master and another for the agent.

The master is responsible for hosting the DC/OS dashboard, Mesos and Marathon. They manage scheduling tasks between the different agents and providing visibility into the cluster health. It is accessible via the DNS name _master_.

The agent runs tasks deployed via Mesos and Marathon. The agent is capable of running different types of tasks, the most common being Docker Containers. It is accessible via the DNS name _agent01_.

The interactive terminal is your client. It is configured with the DC/OS CLI and can communicate with both the master and agent.

## Task

To begin, ensure the DC/OS cluster is running by executing `launch.sh`{{execute}}. The script ensures that the DC/OS Master is running.

## Install DC/OS CLI

Once the cluster has started, configure the CLI to talk to the newly started cluster.

`dcos config set core.dcos_url https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com`{{execute}}

The CLI can be viewed to see the state, health and also deploy tasks. We will use this in the next step to inspect the cluster state.
