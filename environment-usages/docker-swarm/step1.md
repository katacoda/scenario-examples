The Docker Swarm layout includes two Docker nodes. When you use the `terminal` layout, you will be connected to the first node. When you use `terminal-terminal` you will have a split terminal window with a connection to both nodes.

The index.json would look like this:

<pre class="file">
  "environment": {
    "uilayout": "terminal-terminal"
  },
  "backend": {
    "imageid": "docker-swarm"
  }
</pre>