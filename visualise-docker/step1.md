Katacoda has integrated [Weave Scope](https://weave.works/scope) to help visualise Docker and Kubernetes based deployments.

The aim of integrating Scope is to help people understand what has been deployed and as changes new aspects are deployed to automatically see the impact.

To launch Scope, click the Tab.

## Index.json

To add the visualise tab to your scenarios, include the following JSON snippet within the environments node. This will automatically add the tab to the scenarios. When the tab is pressed, the command to launch the Scope container will run.

<pre class="file">
"showvisualise": true,
"scope": "docker run --name=scope -d --net=host --pid=host --privileged -v /var/run/docker.sock:/var/run/docker.sock:rw weaveworks/scope:1.9.1 --probe.docker=true",
"scopePort": 4040,
</pre>