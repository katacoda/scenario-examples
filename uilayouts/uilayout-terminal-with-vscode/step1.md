The Katacoda `terminal` layout provides a full Terminal experience. This can be extended to include a full IDE experience as a separate tab by including `showide` within the `environment` section of the `index.json`. For example:

```
"environment": {
  "showide": true
}
```

## IDE Functionality

With the IDE, you can open files certain files from Markdown - `newFile.js`{{open}}

You can copy, extend or replace text from UI helpers.

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

Within the Markdown, include:

<pre>
&#x3C;pre class=&#x22;file&#x22; data-filename=&#x22;app.js&#x22; data-target=&#x22;prepend&#x22;&#x3E;console.log(&#x22;Starting...&#x22;)
&#x3C;/pre&#x3E;
</pre>

The following snippet will append the contents of the editor:

<pre class="file" data-filename="app.js" data-target="append">console.log("Finishing...")
</pre>

Within the Markdown, include:

<pre>
&#x3C;pre class=&#x22;file&#x22; data-filename=&#x22;app.js&#x22; data-target=&#x22;append&#x22;&#x3E;console.log(&#x22;Finishing...&#x22;)
&#x3C;/pre&#x3E;
</pre>

The editor can copy to particular files based on the data-filename attribute:

<pre class="file" data-filename="index.js" data-target="replace">console.log("Index.js here...")
</pre>

Within the Markdown, include:

<pre>
&#x3C;pre class=&#x22;file&#x22; data-filename=&#x22;index.js&#x22; data-target=&#x22;replace&#x22;&#x3E;console.log(&#x22;Index.js here...&#x22;)
&#x3C;/pre&#x3E;
</pre>
