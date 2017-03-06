The following snippet can be copied into the editor:

<pre class="file" data-filename="app.js" data-target="replace">var http = require('http');
var requestListener = function (req, res) {
  res.writeHead(200);
  res.end('Hello, World!');
}

var server = http.createServer(requestListener);
server.listen(3000, function() { console.log("Listening on port 3000")});
</pre>

Code can be executed with the syntax `node app.js`{{execute}}

The following will automatically be turned into a link and proxied to port 3000 -  http://[[CLIENT_SUBDOMAIN]]-3000-[[KATACODA_HOST]].environments.katacoda.com/

In a multi-host environment, such as Docker, use HOST_SUBDOMAIN instead of CLIENT_SUBDOMAIN.

Live example at https://www.katacoda.com/courses/nodejs/playground
