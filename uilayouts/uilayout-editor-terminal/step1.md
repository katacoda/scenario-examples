Copy file to editor:

<pre class="file" data-filename="app.js" data-target="replace">var http = require('http');
var requestListener = function (req, res) {
  res.writeHead(200);
  res.end('Hello, World!');
}

var server = http.createServer(requestListener);
server.listen(3000, function() { console.log("Listening on port 3000")});
</pre>

The following snippet will prepend the contents of the editor:

<pre class="file" data-filename="app.js" data-target="prepend">console.log("Starting...")
</pre>

The following snippet will append the contents of the editor:

<pre class="file" data-filename="app.js" data-target="append">console.log("Finishing...")
</pre>

The editor can copy to particular files:

<pre class="file" data-filename="index.js" data-target="append">console.log("Index.js here...")
</pre>

## New Files

Create a new file via the CLI:
`touch newFile.js`{{execute}}

This can then be opened:
`newFile.js`{{open}}
